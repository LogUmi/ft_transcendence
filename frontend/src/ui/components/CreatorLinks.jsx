import { Link } from "react-router-dom";

/*
	Affiche le créateur d'un track.
	Props :
	- creator : objet { ID, Name }
	- className : classes CSS optionnelles
*/
export function CreatorLinks({ creator, className = "" }) {
	if (!creator) return null;

	return (
		<span className={className}>
			<Link
				to={`/artists/${creator.ID}`}
				className="hover:underline"
				title={creator.Name}
			>
				{creator.Name}
			</Link>
		</span>
	);
}

export default CreatorLinks;
