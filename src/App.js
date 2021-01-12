import React from "react";
import "./App.css";
import Row from "./Row";
import requests from "./requests";
import Banner from "./Banner";
import Nav from "./Nav";
function App() {
  return (
    <div className="app">
      <Nav />
      <Banner />
      <Row
        isLargeRow
        title="Action"
        fetchUrl={requests.fetchActionMovies}
      />
      <Row
        isLargeRow
        title="Fantastique"
        fetchUrl={requests.fetchFantasyMovies}
      />
      <Row
        isLargeRow
        title="Science-fiction"
        fetchUrl={requests.fetchScienceFictionMovies}
      />
      <Row
        isLargeRow
        title="Horreur"
        fetchUrl={requests.fetchHorrorMovies}
      />
      <Row
        isLargeRow
        title="Thriller"
        fetchUrl={requests.fetchNetflixOriginals}
      />
    </div>
  );
}

export default App;
