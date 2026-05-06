import { Link } from "react-router-dom";

/*
	Lien cliquable vers la page d'un track.
	Props :
	- track     : objet { id, title }
	- className : classes CSS optionnelles
*/
export function TrackLink({ track, className = "" }) {
	return (
		<Link
			to={`/tracks/${track.ID}`}
			className={className}
			title={track.Title}
		>
			{track.Title}
		</Link>
	);
}

export default TrackLink;
