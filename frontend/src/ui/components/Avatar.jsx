import { useState, useEffect } from "react";
import { gradientFromId, resolveUrl } from "../../services/utils";

export function Avatar({ user, size = 40 }) {
	const [imgError, setImgError] = useState(false);

	useEffect(() => {
		setImgError(false);
	}, [user?.AvatarURL]);

	const dim = { width: size, height: size, minWidth: size, minHeight: size, fontSize: size * 0.4 };

	if (!user) return null

	if (user.AvatarURL && !imgError) {
		return (
			<img
				src={resolveUrl(user.AvatarURL)}
				alt={`Avatar de ${user.Username}`}
				style={dim}
				className="rounded-full object-cover shrink-0"
				referrerPolicy="no-referrer"
				onError={() => setImgError(true)}
			/>
		);
	}

	return (
		<div
			style={dim}
			className={`flex items-center justify-center rounded-full bg-gradient-to-br ${gradientFromId(user.ID)} text-whiteW font-semibold shrink-0`}>
			{user.Username?.charAt(0).toUpperCase() ?? "?"}
		</div>
	);
}
