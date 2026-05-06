import { useAuthStore } from "../../../store/authStore";
import { ButtonConnexion } from "./ButtonConnexion";
import { ButtonConnected } from "./ButtonConnected";
import { Link } from "react-router-dom";

export function UserSidebarButton()
{
	const isAuth = useAuthStore((state) => state.isAuthenticated);
	if (!isAuth) return (
		<>
			<ButtonConnexion />
			<Link to="/terms" className="flex justify-center text-whiteW_50 text-sm hover:underline">
				conditions d'utilisation
			</Link>
			<Link to="/privacy" className="flex justify-center text-whiteW_50 text-sm hover:underline">
				politique de confidentialité
			</Link>
		</>
	);
	return (
		<>
			<ButtonConnected />
		</>
	);
}