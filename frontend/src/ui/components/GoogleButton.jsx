import googleLogo from "../../assets/Google_Favicon_2025.svg";

export function GoogleButton () {
	function handleGoogleClick() {
		window.location.href = "/api/auth/google";
	}

	return (
		<button
			type="button"
			onClick={handleGoogleClick}
			className="
				w-full
				flex items-center justify-center gap-3
				px-4 py-2
				text-whiteW bg-blackW text-lg
				rounded-full
				border border-whiteW hover:border-redW hover:border-2
				transition-all duration-200"
		>
			<img 
				src={googleLogo}
				alt="Logo Google"
				width="20" height="20"
			/>
				Continuer avec Google
		</button>
	)
}
