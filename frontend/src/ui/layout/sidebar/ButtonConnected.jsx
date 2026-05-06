import * as DropdownMenu from "@radix-ui/react-dropdown-menu";
import { useNavigate } from "react-router-dom";

import { useAuthStore } from "../../../store/authStore";
import { usePlayerStore } from "../../../store/playerStore";
import { handleLogout } from "../../../services/APIFRONT/handle";
import { ddm } from "../../ddmStyles";
import { Avatar } from "../../components/Avatar";
import { btn } from "../../primitives/Button";

export function ButtonConnected() {
  const navigate = useNavigate();
  const user = useAuthStore((state) => state.user);
  const logout = useAuthStore((state) => state.logout);

  function handleLogoutAction() {
    usePlayerStore.getState().stopAndRecord();
    handleLogout().finally(() => {
      logout();
    });
  }

  if (!user) return null;

  return (
    <DropdownMenu.Root>
      <DropdownMenu.Trigger asChild>
        <button type="button" className={btn.userBT}>
          <Avatar user={user} size={40} />
          <div className="flex flex-col text-left">
            <span className="text-whiteW text-sm font-semibold">
              {user.Username}
            </span>
          </div>
        </button>
      </DropdownMenu.Trigger>
      <DropdownMenu.Portal>
        <DropdownMenu.Content
          side="left"
          align="end"
          sideOffset={6}
          className={ddm.content}
        >
					<DropdownMenu.Item
            className={ddm.item}
            onSelect={() => navigate("/terms")}
          >
            Conditions d'utilisation
          </DropdownMenu.Item>
					<DropdownMenu.Item
            className={ddm.item}
            onSelect={() => navigate("/privacy")}
          >
            Politique de confidentialité
          </DropdownMenu.Item>
          <DropdownMenu.Item
            className={ddm.item}
            onSelect={() => navigate("/profile")}
          >
            Mon profil
          </DropdownMenu.Item>
          <DropdownMenu.Item
            className={ddm.item}
            onSelect={() => navigate("/friends")}
          >
            Amis
          </DropdownMenu.Item>
          <DropdownMenu.Separator className={ddm.separator} />
          <DropdownMenu.Item
            className={ddm.itemDanger}
            onSelect={handleLogoutAction}
          >
            Déconnexion
          </DropdownMenu.Item>
        </DropdownMenu.Content>
      </DropdownMenu.Portal>
    </DropdownMenu.Root>
  );
}
