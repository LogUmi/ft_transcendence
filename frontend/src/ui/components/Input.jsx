function InputInLogin({
	label,
	type = "text",
	placeholder = "",
	value,
	onChange,
	className = "",
}) {
	return (
		<div>
			{label && (
				<label className="block text-sm text-whiteW mb-1">
					{label}
				</label>
			)}

			<input
				type={type}
				placeholder={placeholder}
				value={value}
				onChange={onChange}
				className={`
					w-full
					px-3 py-2
					rounded-lg
					text-whiteW_70
					bg-blackW
					border border-whiteW_50
					outline-none
					focus:border-2
					focus:border-redW
					${className}
				`}
			/>
		</div>
	);
}


export default InputInLogin;