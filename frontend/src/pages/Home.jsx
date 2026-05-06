import { Outlet } from "react-router-dom";
import { TopTabs } from "../ui/layout/TopTabs";

export function Home() {
	return (
		<div className="h-full flex flex-col">
			<div className="shrink-0 pb-3 border-b border-whiteW_20">
				<TopTabs />
			</div>
			<div className="flex-1 min-h-0 overflow-y-auto -mb-4 sm:-mb-6">
				<Outlet />
			</div>
		</div>
	);
}

export default Home;