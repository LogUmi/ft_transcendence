/** @type {import('tailwindcss').Config} */
export default {
	content: ["./index.html", "./src/**/*.{js,jsx,ts,tsx}"],
	theme: {
		extend: {
			colors: {
				// NEW NAME COLORS
				whiteW: "#ffffff",																	// white
					whiteW_6:  "rgba(255,255,255,0.06)",							// pour fond actif léger					equiv activeButtonSB
					whiteW_10: "rgba(255,255,255,0.10)",							// hover léger										equiv hoverButtonSB
					whiteW_20: "rgba(255,255,255,0.20)",							// séparateurs										equiv dividerlineSB
					whiteW_50: "rgba(255,255,255,0.50)",							// sous-titres										equiv sectionTitleTextSB
					whiteW_70: "rgba(255,255,255,0.70)",							// texte secondaire							equiv inactiveTextSB
				blackW: "#14110f",																	// black									equiv foreground, background
					blackW_40: "rgba(20,17,15,0.40)",									// gris										equiv textSoft
					blackW_60: "rgba(20,17,15,0.60)",									// gris										equiv textMuted
				blackSBW: "#232627",
				creamW: "#ede7d9",																	// crème									equiv surface
				creamWShadow: "#e2dac8",														// crème shadow						equiv surfaceMuted
				redW: "#c0392b",																		// RED bouton non hover		equiv red
				redWHv: "#e74c3c",																	// RED bouton hover				equiv primaryHover

				greenW: "#00ff00",																	// vert
				greenWHv: "#27ae60",

				blueW: "#0000ff",																	// bleu

			},
			fontFamily: {
				display: ["Fraunces", "serif"],
				sans: ["DM Sans", "system-ui", "sans-serif"],
				mono: ["DM Mono", "ui-monospace", "SFMono-Regular", "monospace"],
			},
			boxShadow: {
				card: "0 2px 8px rgba(0,0,0,0.08)",
			},
			borderRadius: {
				card: "12px",
				pill: "999px",
			},
		},
	},
	safelist: [
		"from-rose-900", "to-orange-700",
		"from-violet-800", "to-indigo-500",
		"from-emerald-800", "to-teal-500",
		"from-purple-500", "to-fuchsia-500",
		"from-indigo-500", "to-sky-500",
		"from-orange-500", "to-orange-400",
		"from-pink-500", "to-rose-500",
		"from-teal-500", "to-emerald-500",
		"from-amber-500", "to-yellow-400",
		"from-zinc-500", "to-zinc-700",
		"from-emerald-500", "to-lime-400",
		"from-slate-600", "to-slate-500",
		"from-red-500", "to-rose-700",
	],
	plugins: [require("tailwind-scrollbar")],
};