import { Button } from "../ui/primitives/Button";
import { Pencil } from "lucide-react";
import { useAuthStore } from "../store/authStore";
import { useState, useRef, useEffect } from "react";
import { Avatar } from "../ui/components/Avatar";
import {
  handleUpdateUser,
  handleDeleteUser,
  handleGetCurrentUser,
  handleUploadAvatar,
} from "../services/APIFRONT/handle";
import * as Dialog from "@radix-ui/react-dialog";
import { useNavigate } from "react-router-dom";
import { toast } from "sonner";

function ProfileField({ label, value, onChange, disabled, type = "text" }) {
  return (
    <div className="flex flex-col gap-1">
      <span className="text-xs text-whiteW_50 uppercase">{label}</span>
      <input
        type={type}
        title={label}
        value={value}
        onChange={onChange}
        disabled={disabled}
        className="bg-transparent border-b border-whiteW_20 py-1 outline-none disabled:opacity-60 w-full"
      />
    </div>
  );
}

function Profile() {
  const navigate = useNavigate();
  const [editMode, setEditMode] = useState(false);
  const [deleteAccount, setDeleteAccount] = useState(false);
  const [error, setError] = useState("");
  const user = useAuthStore((state) => state.user);
  const setUser = useAuthStore((state) => state.setUser);
  const logout = useAuthStore((state) => state.logout);
  const fileRef = useRef(null);
  const logoutOnUnmountRef = useRef(false);

  // États à envoyer au back
  const [username, setUsername] = useState(user?.Username ?? "");
  const [email, setEmail] = useState(user?.Email ?? "");
  const [avatarFile, setAvatarFile] = useState(null);
  const [oldPassword, setOldPassword] = useState("");
  const [newPassword, setNewPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");

  // État local uniquement (affichage preview)
  const [avatarPreview, setAvatarPreview] = useState(null);

  useEffect(() => {
    return () => {
      if (avatarPreview) URL.revokeObjectURL(avatarPreview);
    };
  }, [avatarPreview]);

  useEffect(() => {
    return () => {
      if (logoutOnUnmountRef.current) logout();
    };
  }, [logout]);

  async function handleSubmit(e) {
    e.preventDefault();
    setError("");

    if (!username) {
      setError("Le nom d'utilisateur ne peut pas être vide.");
      return;
    }
    if (username.length > 30) {
      setError("Le nom d'utilisateur ne peut pas dépasser 30 caractères.");
      return;
    }
    if (!email.includes("@") || !email.includes(".")) {
      setError("L'adresse email n'est pas valide.");
      return;
    }
    const emailChanged = email !== user?.Email;

    if (emailChanged && !oldPassword) {
      setError("Veuillez entrer votre mot de passe actuel pour modifier l'email.");
      return;
    }
    if (newPassword) {
      if (!oldPassword) {
        setError("Veuillez entrer votre mot de passe actuel.");
        return;
      }
      if (newPassword.length < 8) {
        setError("Le nouveau mot de passe doit contenir au moins 8 caractères.");
        return;
      }
      if (newPassword !== confirmPassword) {
        setError("Les mots de passe ne correspondent pas.");
        return;
      }
      if (emailChanged) {
        setError("Veuillez modifier l'email et le mot de passe séparément.");
        return;
      }
    }

    const body = { Username: username };
    if (emailChanged) {
      // Le backend vérifie le mdp uniquement via OldEmail/NewEmail/Password
      body.OldEmail = user.Email;
      body.NewEmail = email;
      body.Password = oldPassword;
    } else {
      body.Email = email;
      if (newPassword) {
        body.OldPassword = oldPassword;
        body.Password = newPassword;
      }
    }

    if (avatarFile) {
      let uploaded = null;
      await handleUploadAvatar(
        avatarFile,
        (v) => {
          uploaded = v;
        },
        setError,
      );
      if (!uploaded) return;
      body.AvatarURL = uploaded.avatar_url;
    } else {
      body.AvatarURL = user?.AvatarURL ?? null;
    }

    // envoyer les modifications au back
    let updatedUser = null;
    let updateError = "";
    await handleUpdateUser(
      body,
      (result) => {
        updatedUser = result;
      },
      (msg) => {
        setError(msg);
        updateError = msg;
      },
    );

    setOldPassword("");

    // Si le back a retourné une erreur, on s'arrête
    if (!updatedUser) {
      toast.error(updateError || "Échec de la mise à jour.");
      return;
    }

    // recharger le profil modifié depuis le back et mettre à jour le store
    await handleGetCurrentUser((freshUser) => {
      if (freshUser) {
        setUser(freshUser);
        setEditMode(false);
        toast.success("Profil mis à jour avec succès.");
      }
    }, setError);
  }

  function handleRemoveAccount() {
    handleDeleteUser(setError).then(() => {
      setDeleteAccount(false);
      toast.success("Compte supprimé.");
      logoutOnUnmountRef.current = true;
      navigate("/home");
    });
  }

  return (
    <div>
      <div className="text-whiteW text-bold text-[45px] truncate min-w-0">
        Profil de {user?.Username}
      </div>

      <form onSubmit={handleSubmit}>
        <div className="flex gap-8 px-10 py-20">
          {/* Avatar */}
          <div
            className="relative cursor-pointer"
            style={{ width: 75, height: 75 }}
            onClick={() => editMode && fileRef.current.click()}
          >
            <input
              ref={fileRef}
              type="file"
              accept="image/*"
              className="hidden"
              onChange={(e) => {
                const file = e.target.files[0];
                if (file) {
                  setAvatarFile(file);
                  setAvatarPreview(URL.createObjectURL(file));
                }
              }}
            />
            {avatarPreview ? (
              <img
                src={avatarPreview}
                alt="preview"
                style={{ width: 75, height: 75 }}
                className="rounded-full object-cover"
              />
            ) : (
              <Avatar user={user} size={75} />
            )}
            {editMode && (
              <div className="absolute inset-0 rounded-full bg-black/40 flex items-center justify-center">
                <Pencil size={20} className="text-whiteW" />
              </div>
            )}
          </div>

          {/* Champs utilisateur */}
          <div className="flex flex-col gap-4 text-whiteW min-w-0 flex-1">
            <ProfileField
              label="Nom d'utilisateur"
              value={username}
              onChange={(e) => setUsername(e.target.value)}
              disabled={!editMode}
            />
            <div className="flex flex-col gap-1">
              <ProfileField
                label="Email"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                disabled={!editMode}
                type="email"
              />
              {editMode && email !== user?.Email && (
                <span className="text-xs text-whiteW_50">
                  Mot de passe actuel requis pour modifier l'email
                </span>
              )}
            </div>

            {(user?.RoleName === "admin" || user?.RoleName === "moderator") && (
              <ProfileField label="Rôle" value={user.RoleName} disabled />
            )}

            {!editMode ? (
              <>
                <ProfileField
                  label="Mot de passe"
                  value="••••••••"
                  disabled
                  type="password"
                />
                <div className="flex gap-3 flex-wrap">
                  <Button
                    type="button"
                    variant="primaryBT"
                    className="whitespace-nowrap self-start flex items-center gap-2"
                    onClick={() => {
                      if (user?.AuthType !== "mail") {
                        toast.info("Vos données sont gérées par Google. Modifiez-les directement dans votre compte Google.");
                        return;
                      }
                      setEditMode(true);
                      setError("");
                    }}
                  >
                    <Pencil size={15} />
                    Modifier
                  </Button>
                  {user.RoleName !== "owner" && (
                    <Button
                      type="button"
                      onClick={() => setDeleteAccount(true)}
                      className="whitespace-nowrap self-start"
                    >
                      Supprimer le compte
                    </Button>
                  )}
                </div>
              </>
            ) : (
              <>
                <ProfileField
                  label="Mot de passe actuel"
                  value={oldPassword}
                  onChange={(e) => setOldPassword(e.target.value)}
                  type="password"
                />
                <ProfileField
                  label="Nouveau mot de passe"
                  value={newPassword}
                  onChange={(e) => setNewPassword(e.target.value)}
                  type="password"
                />
                <ProfileField
                  label="Confirmer le nouveau mot de passe"
                  value={confirmPassword}
                  onChange={(e) => setConfirmPassword(e.target.value)}
                  type="password"
                />
              </>
            )}

            <Dialog.Root open={deleteAccount} onOpenChange={setDeleteAccount}>
              <Dialog.Portal>
                <Dialog.Overlay className="fixed inset-0 z-[9999] bg-blackW/50 backdrop-blur-sm" />
                <Dialog.Content
                  className="fixed left-1/2 top-1/2 z-[9999] -translate-x-1/2 -translate-y-1/2 bg-blackW text-whiteW border border-redW rounded-card p-6 space-y-4 w-80"
                  onClick={(e) => e.stopPropagation()}
                >
                  <Dialog.Title className="text-lg font-semibold">
                    Êtes-vous sûr de vouloir supprimer votre compte ?
                  </Dialog.Title>
                  <Dialog.Description className="sr-only">
                    Cette action est irréversible et supprimera définitivement
                    votre compte.
                  </Dialog.Description>
                  <div className="flex justify-end gap-2 pt-2">
                    <Button
                      type="button"
                      variant="primaryBT"
                      onClick={() => setDeleteAccount(false)}
                    >
                      Non
                    </Button>
                    <Button variant="returnBT" onClick={handleRemoveAccount}>
                      Oui
                    </Button>
                  </div>
                </Dialog.Content>
              </Dialog.Portal>
            </Dialog.Root>
          </div>
        </div>

        {error && <p className="text-center text-redW text-sm mb-4">{error}</p>}

        {editMode && (
          <div className="flex justify-center">
            <Button type="submit" variant="primaryBT">
              Sauvegarde des modifications
            </Button>
          </div>
        )}
      </form>
    </div>
  );
}

export default Profile;
