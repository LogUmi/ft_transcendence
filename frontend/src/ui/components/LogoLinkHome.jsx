import { NavLink } from "react-router-dom";

function LogoLinkHome({ size = "text-[60px]" }) {
	return (
		<NavLink to="/home">
			<div className={`text-whiteW font-display ${size}`}>
				w
				<span className="italic text-redW">a</span>
				ve
			</div>
		</NavLink>
	);
}

export default LogoLinkHome;