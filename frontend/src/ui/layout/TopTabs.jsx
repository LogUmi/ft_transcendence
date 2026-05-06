import { NavLink, Link } from "react-router-dom";
import { Button } from "../primitives/Button";

const tabs = [
	{ label: "Musique",  to: "" },          // index (/)
	{ label: "Podcasts", to: "podcasts" },  // /podcasts
];

export function TopTabs({ showHistory = false })
{
	return (
		<div>
			<div className="flex items-center gap-6 min-w-max pr-4">
				{/* Onglets à gauche */}
				<div className="flex gap-8">
					{tabs.map((tab) => (
						<NavLink
							key={tab.label}
							to={tab.to}
							end={tab.to === ""} // important pour Musique
							/* on cree un tableau avec les paramatres à renseigner dans className
							et on join les lignes du tableau en une string */
							className={({ isActive }) =>
								[
									"mt-2 pb-2 text-md transition-colors",
									isActive
										? "text-whiteW font-semibold"
										: "text-whiteW_70 hover:text-whiteW_50",
								].join(" ")
							}
						>
							{({ isActive }) => (
								<span className="relative">
									{tab.label}
									{/* trait rouge sous le nom de la page active */}
									{isActive && (
										<span className="absolute -bottom-[10px] block h-[4px] w-full bg-redW" />
									)}
								</span>
							)}
						</NavLink>
					))}
				</div>

				{showHistory && (
					<div className="flex gap-4 ml-auto text-md">
						<Button as={Link} to="/history" variant="primaryBT">
							Historique
						</Button>
					</div>
				)}
			</div>
		</div>
	);
}

export default TopTabs;