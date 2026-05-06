import LogoLinkHome from "../../components/LogoLinkHome"

function TitleSB() {
	return (
		<div className="flex flex-col items-center border-b border-whiteW/20 pb-4">
				<LogoLinkHome size = "text-[45px]"/>
				<div className="font-mono text-[12px] uppercase tracking-[0.10em] text-whiteW_50">
					Music Streaming
				</div>
			</div>
	);
}

export default TitleSB