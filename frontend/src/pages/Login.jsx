import { useNavigate, Link } from "react-router-dom";
import { useState, useEffect } from "react";
import {
  handleLogin as apiHandleLogin,
  handleGetCurrentUser,
  handleGetUserLikes,
} from "../services/APIFRONT/handle.jsx";
import { useAuthStore } from "../store/authStore";
import { useLikeStore } from "../store/likeStore.js";
import AuthCard from "../ui/components/Card";
import InputInLogin from "../ui/components/Input";
import { GoogleButton } from "../ui/components/GoogleButton";
import { Button } from "../ui/primitives/Button";
import LogoLinkHome from "../ui/components/LogoLinkHome";

import { toast } from "sonner";

function Login() {
  const navigate = useNavigate();
  const setUser = useAuthStore((state) => state.setUser);
  const setLikedIds = useLikeStore((state) => state.setLikedIds);

  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");

  // ✅ Toast automatique si erreur
  useEffect(() => {
    if (error) {
      toast.error(error, { id: "login-error" });
    }
  }, [error]);

  async function handleLogin() {

    localStorage.removeItem("player-store");
    localStorage.removeItem("like-store");
    localStorage.removeItem("playlist-store");

    await apiHandleLogin(
      { email, password },
      async (auth) => {
        if (!auth) return;

        await handleGetCurrentUser(setUser, setError);
        handleGetUserLikes((data) => {
					// on récupère dans la data uniquement les ID des tracks likées pour alimenter le likestore
          setLikedIds((data ?? []).map((l) => l.TrackID));
        });
        toast.success("Login success");
        navigate("/");
      },
      setError,
    );
  }

  async function handleSubmit(e) {
    e.preventDefault();
    await handleLogin();
  }

  return (
    <div className="min-h-screen overflow-x-auto overflow-y-auto bg-blackW">
      <div className="min-w-fit flex flex-col items-center py-8 px-8 min-h-screen">
				<LogoLinkHome />

				<AuthCard
					title="Connexion wave"
					className="w-[26rem] shrink-0 border border-whiteW px-4 py-6"
				>
					<form className="space-y-4" onSubmit={handleSubmit}>
						<InputInLogin
							label="Email"
							placeholder="Votre email"
							onChange={(e) => setEmail(e.target.value)}
						/>

						<InputInLogin
							label="Mot de passe"
							type="password"
							placeholder="••••••••"
							onChange={(e) => setPassword(e.target.value)}
						/>

						<div className="flex justify-center">
							<Button variant="primaryBT" type="submit">
								Se connecter
							</Button>
						</div>

						<p className="text-sm text-center mt-4">
							Nouveau sur Wave?{" "}
							<Link to="/register" className="text-redW hover:underline">
								Créer un compte
							</Link>
						</p>
					</form>

					<div className="flex items-center gap-5 my-6">
						<div className="flex-1 h-px bg-whiteW" />
						<span className="text-xl text-whiteW font-semibold">ou</span>
						<div className="flex-1 h-px bg-whiteW" />
					</div>
					<GoogleButton />
				</AuthCard>
      </div>
    </div>
  );
}

export default Login;
