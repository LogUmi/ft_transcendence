function SectionSB({title, children}) {
	return (
	<div className="mb-6 px-1">
		<div className="font-mono text-[10px] uppercase tracking-[0.18em] text-whiteW_50">
			{title}
		</div>
		<div className="space-y-1">
			{children}
		</div>
	</div>
	);
}

export default SectionSB