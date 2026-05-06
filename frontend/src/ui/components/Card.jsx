function AuthCard({ title, children, className = "" }) {
	return (
		<div className={`
			text-whiteW bg-blackW
			rounded-3xl
			p-7
			shadow-xl
			${className}
		`}>
			{title && (
				<h1 className="text-2xl font-bold mb-6 text-center">
					{title}
				</h1>
			)}
			<div className="space-y-4">
				{children}
			</div>
		</div>
	);
}

export default AuthCard;