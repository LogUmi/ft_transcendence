import { NavLink } from "react-router-dom";
import { useUIStore } from "../../../store/uiStore";

function NavSidebarItem({ to, icon: Icon, label })
{
	const base = "flex items-center gap-3 rounded-pill px-3 py-2 text-sm transition-colors";
	const activeRoute = "text-white hover:bg-whiteW_10";
	const inactiveRoutes = "text-whiteW_70 hover:bg-whiteW_10";
	const closeMobileSidebar = useUIStore((s) => s.closeMobileSidebar);

	return (
		<NavLink
			to={to}
			onClick={closeMobileSidebar}
			className={({ isActive }) =>
				`${base} ${isActive ? activeRoute : inactiveRoutes}`
			}
		>
			{({ isActive }) => (
				<>
					{/* petit point rouge uniquement si la route est active */}
					{isActive && (
						<span className="h-1.5 w-1.5 rounded-full bg-redW" />
					)}

						{Icon && <Icon className="h-4 w-4" />}
						<span>{label}</span>
				</>
			)}
		</NavLink>
	);
}

export default NavSidebarItem
