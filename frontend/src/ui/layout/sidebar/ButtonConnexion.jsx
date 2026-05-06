import { NavLink } from "react-router-dom";
import { User } from "lucide-react";
import { Button } from "../../primitives/Button";

export function ButtonConnexion()
{
	return (
		<Button
			as={NavLink}
			to="/login"
			variant="primaryBT"
			className="w-full py-3 !justify-start"
		>
			<div className="flex h-8 w-8 shrink-0 items-center justify-center rounded-full bg-redWHv">
				<User className="h-5 w-5 text-whiteW" />
			</div>

			<div className="flex flex-col text-left">
				<span className="text-sm font-bold text-whiteW">
					Se connecter
				</span>
			</div>
		</Button>
	);
}