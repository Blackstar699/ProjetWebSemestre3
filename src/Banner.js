import React, { useEffect, useState } from "react";
import "./Banner.css";


function Banner() {
  const [movie, setMovie] = useState({});

  useEffect( () => {
    async function fetchMovie() {
      const request = fetch(`/api/films/all`);
      setMovie(
        request.data.results[
          Math.floor(Math.random() * request.data.results.length)
        ]

      ); 
    }
    fetchMovie();
  }, []);
  console.log(movie);
  return (
    <header
      className="banner"
      style={{
        backgroundSize: "cover",
        backgroundImage: fetch(`api/films/img`),
        backgroundPosition: "center center",
      }}
    >
      <div className="banner_contents">
        <h1 className="banner_title">
          {fetch('api/films/titre')}
        </h1>
        <div className="banner_buttons">
          <button className="banner_button">Lire</button>
          <button className="banner_button">Plus d'infos</button>
        </div>
        <p className="banner_description">{movie.overview}</p>
      </div>
      <div className="banner_fadeBottom" />
    </header>
  );
}

export default Banner;
