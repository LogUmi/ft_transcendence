import { Link } from "react-router-dom";

/*
	Affiche la collection d'un track.
	Props :
	- collection : objet { ID, Name }
	- className : classes CSS optionnelles
*/
export function CollectionLinks({ collection, className = "" }) {
	if (!collection) return null;

	return (
		<span className={className}>
			<Link 
				to={`/collections/${collection.ID}`}
				className="hover:underline"
				title={collection.Name}
			>
				{collection.Name}
			</Link>
		</span>
	);
}

export default CollectionLinks;
