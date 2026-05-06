import { useState, useEffect } from "react";
import { createPortal } from "react-dom";
import { CheckCircle, XCircle, Info } from "lucide-react";

const VARIANTS = {
	success: {
		container: "bg-creamW text-blackW border-blackW_20",
		icon:      <CheckCircle size={16} className="text-green-500 shrink-0" />,
	},
	error: {
		container: "bg-redW text-whiteW border-whiteW_20",
		icon:      <XCircle size={16} className="text-whiteW shrink-0" />,
	},
	info: {
		container: "bg-creamW text-blackW border-blackW_20",
		icon:      <Info size={16} className="text-blackW_70 shrink-0" />,
	},
};

/*
	Props :
	- toast    : texte à afficher
	- variant  : "success" | "error" | "info" (défaut : "success")
	- duration : durée en ms avant fermeture (défaut : 3000)
	- onClose  : callback appelé à la fin
*/
export function Toast({ toast, variant = "success", duration = 4000, onClose }) {
	const [visible, setVisible] = useState(false);
	const { container, icon } = VARIANTS[variant] ?? VARIANTS.success;

	useEffect(() => {
		const t = requestAnimationFrame(() => setVisible(true));
		return () => cancelAnimationFrame(t);
	}, []);

	useEffect(() => {
		const t = setTimeout(() => onClose?.(), duration);
		return () => clearTimeout(t);
	}, [duration, onClose]);

	return createPortal(
		<div
			className={`fixed top-4 right-4 z-[9999] flex items-center gap-3 rounded-xl text-sm px-4 py-3 shadow-lg border transition-all duration-300 ease-in-out ${container}`}
			style={{
				transform: visible ? "translateY(0)" : "translateY(-120%)",
				opacity:   visible ? 1 : 0,
			}}
		>
			{icon}
			{toast}
		</div>,
		document.body
	);
}

export default Toast;
