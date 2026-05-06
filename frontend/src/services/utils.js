export const DEFAULT_TRACK_GRADIENT    = "from-rose-900 to-orange-700";
export const DEFAULT_ARTIST_GRADIENT   = "from-violet-800 to-indigo-500";
export const DEFAULT_PLAYLIST_GRADIENT = "from-emerald-800 to-teal-500";

const gradients = [
	"from-purple-500 to-fuchsia-500",
	"from-indigo-500 to-sky-500",
	"from-orange-500 to-orange-400",
	"from-pink-500 to-rose-500",
	"from-teal-500 to-emerald-500",
	"from-amber-500 to-yellow-400",
	"from-zinc-500 to-zinc-700",
	"from-emerald-500 to-lime-400",
	"from-slate-600 to-slate-500",
	"from-red-500 to-rose-700",
];

export function gradientFromId(id) {
	return gradients[id % gradients.length];
}

export function resolveUrl(url) {
	if (!url) return null;
	if (url.startsWith("http") || url.startsWith("/")) return url;
	return `/${url}`;
}

