/* eslint-disable react/prop-types */
const base =
  "inline-flex items-center justify-center gap-2 font-sans font-semibold transition-colors duration-150";

const variantClasses = {
	/* Accueil main */
	primaryBT: "bg-redW text-whiteW rounded-pill px-6 py-2 text-sm hover:bg-redWHv hover:scale-105",
	secondaryBT: "bg-creamWShadow rounded-pill px-5 py-2 text-sm hover:scale-110",
	playlistSideBar: "w-full !justify-start hover:bg-whiteW_10 rounded-pill px-5 py-2 text-sm",

	/* PlayerBar */
	iconPlay: "flex h-10 w-10 items-center justify-center rounded-full bg-redW  text-whiteW hover:bg-redWHv hover:scale-110",
	iconBackFwd: "flex h-8 w-8 items-center justify-center text-whiteW/70 hover:scale-125 hover:text-white",
	iconLoopRand: "flex h-3 w-3 items-center justify-center text-whiteW/70",
	iconHeart: "flex h-8 w-8 items-center justify-center text-whiteW/70 hover:scale-110",

	/* User menu */
	menuItem: "w-full rounded-lg px-3 py-2 text-left hover:bg-blackW/10",

	/* Navigation */
	returnBT: "text-sm text-redW hover:underline",

	/* Chat */
	crossMinus: "text-whiteW hover:text-redW hover:scale-110 transition ",
	sendMsg: "text-sm font-semibold text-whiteW hover:text-whiteW_70  hover:text-redW hover:scale-110 transition-colors ",

	iconCircle: "flex h-6 w-6 items-center justify-center text-sm text-redW hover:text-redWHv hover:scale-110 rounded-full",

	/* Friend actions */
	iconGreen: "flex h-10 w-10 items-center justify-center rounded-full bg-green-600 text-whiteW hover:bg-green-500 hover:scale-110",
	iconOrange: "flex h-10 w-10 items-center justify-center rounded-full bg-orange-500 text-whiteW hover:bg-orange-400 hover:scale-110",
	iconRed: "flex h-10 w-10 items-center justify-center rounded-full bg-redW text-whiteW hover:bg-redWHv hover:scale-110",
};

export const btn = {
	userBT: "flex w-full items-center gap-3 rounded-full px-3 py-3 transition-colors hover:bg-whiteW_10",
};

export function Button({
  variant = "primaryBT",
  as: Component = "button",
  className = "",
  ...props
})
{
  const variantClass = variantClasses[variant] ?? variantClasses.primaryBT;

  return (
    <Component
      className={`${base} ${variantClass} ${className}`}
      {...props}
    />
  );
}
