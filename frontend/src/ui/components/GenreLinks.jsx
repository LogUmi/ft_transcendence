import { Link } from "react-router-dom";

/*
	Affiche la genre d'un track.
	Props :
	- genre : objet { ID, Name }
	- className : classes CSS optionnelles
*/
export function GenreLinks({ genre, className = "" }) {
  if (!genre) return null;

  return (
    <span className={className}>
      <Link to={`/genre/${genre.ID}?name=${encodeURIComponent(genre.Name)}`} className="hover:underline">
        {genre.Name}
      </Link>
    </span>
  );
}

export default GenreLinks;
