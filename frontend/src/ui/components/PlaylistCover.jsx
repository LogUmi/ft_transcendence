import { useState, useEffect } from "react";
import { gradientFromId } from "../../services/utils.js";

export function PlaylistCover({ playlist, size = 40, rounded = "rounded-xl", className = "" }) {
  const firstTrack = playlist.Contents?.[0]?.Track;
  const firstCover = firstTrack?.CoverURL;
  const [imgError, setImgError] = useState(false);

  useEffect(() => { setImgError(false); }, [firstCover]);

  if (firstCover && !imgError) {
    return (
      <img
        src={firstCover}
        alt=""
				title={`Cover de la playlist ${playlist.Name}`}
        style={{ width: size, height: size }}
        className={`shrink-0 object-cover ${rounded} ${className}`}
        onError={() => setImgError(true)}
      />
    );
  }
  return (
    <div
      style={{ width: size, height: size }}
      className={`shrink-0 bg-gradient-to-br ${gradientFromId(firstTrack?.ID ?? playlist.ID)} ${rounded} ${className}`}
			title={`Cover de la playlist ${playlist.Name}`}
    />
  );
}

export default PlaylistCover;
