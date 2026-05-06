import { useState } from "react";
import { useNavigate } from "react-router-dom";
import { Link } from "react-router-dom";
import { toast } from "sonner";

import { handleRegister } from "../services/APIFRONT/handle.jsx";
import AuthCard from "../ui/components/Card";
import InputInLogin from "../ui/components/Input";
import LogoLinkHome from "../ui/components/LogoLinkHome";

function Register() {
  const navigate = useNavigate();

  const [username, setUsername] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [passwordConfirm, setPasswordConfirm] = useState("");
  const [acceptTerms, setAcceptTerms] = useState(false);
  const [acceptPrivacy, setAcceptPrivacy] = useState(false);
  const [error, setError] = useState("");

  async function handleSubmit(e) {
    e.preventDefault();
    setError("");

    // Petites validations côté front
    if (!username || !email || !password || !passwordConfirm) {
      setError("Merci de remplir tous les champs.");
      return;
    }

    if (username.length > 30) {
      setError("Le nom d'utilisateur ne peut pas dépasser 30 caractères.");
      return;
    }

    if (password.length < 8) {
      setError("Le mot de passe doit contenir au moins 8 caractères.");
      return;
    }

    if (password !== passwordConfirm) {
      setError("Les mots de passe ne correspondent pas.");
      return;
    }

    if (!acceptTerms || !acceptPrivacy) {
      setError("Vous devez accepter les conditions d'utilisation et la politique de confidentialité.");
      return;
    }

    await handleRegister(
      { username, email, password },
      async (auth) => {
        if (!auth) return;
        toast.success("Compte créé avec succès !");
        navigate("/login");
      },
      setError,
    );
  }

  return (
    <div className="min-h-screen overflow-x-auto overflow-y-auto bg-blackW">
      <div className="min-w-fit flex flex-col items-center py-8 px-8 min-h-screen">
				<LogoLinkHome />
				<AuthCard
					title="Créer un compte Wave"
					className="w-[26rem] shrink-0 border border-whiteW px-4 py-6"
				>
					<form onSubmit={handleSubmit} className="space-y-4">
						<InputInLogin
							type="text"
							label="Nom d'utilisateur"
							placeholder="ex : Yourpseudo"
							onChange={(e) => setUsername(e.target.value)}
						/>
						<InputInLogin
							type="email"
							label="Email"
							placeholder="ex: YourName@example.com"
							onChange={(e) => setEmail(e.target.value)}
						/>
						<InputInLogin
							type="password"
							label="Mot de passe"
							placeholder="Au moins 8 caractères"
							onChange={(e) => setPassword(e.target.value)}
						/>
						<InputInLogin
							type="password"
							label="Confirmer le mot de passe"
							placeholder="Retape ton mot de passe"
							onChange={(e) => setPasswordConfirm(e.target.value)}
						/>

						<div className="flex flex-col gap-2 text-sm">
							<div className="flex items-start gap-2">
								<input
									id="terms"
									type="checkbox"
									checked={acceptTerms}
									onChange={(e) => setAcceptTerms(e.target.checked)}
									className="mt-1"
								/>
								<label htmlFor="terms" className="text-whiteW">
									J'accepte les{" "}
									<Link to="/terms" className="text-redW hover:underline">
										conditions d'utilisation
									</Link>{" "}
									de Wave.
								</label>
							</div>
							<div className="flex items-start gap-2">
								<input
									id="privacy"
									type="checkbox"
									checked={acceptPrivacy}
									onChange={(e) => setAcceptPrivacy(e.target.checked)}
									className="mt-1"
								/>
								<label htmlFor="privacy" className="text-whiteW">
									J'accepte la{" "}
									<Link to="/privacy" className="text-redW hover:underline">
										politique de confidentialité
									</Link>
									.
								</label>
							</div>
						</div>

						{error && (
							<p className="text-center text-redW text-sm break-all whitespace-pre-wrap">
								{error}
							</p>
						)}
						<button
							type="submit"
							className="w-full mt-4 py-2 rounded-full bg-redW hover:bg-redWHv font-semibold"
						>
							Créer mon compte
							<Link to="/login" className="text-redW hover:underline"></Link>
						</button>
					</form>
					<p className="text-center text-sm mt-4">
						Déjà inscrit ?{" "}
						<Link to="/login" className="text-redW hover:underline">
							Se connecter
						</Link>
					</p>
				</AuthCard>
      </div>
    </div>
  );
}

export default Register;
