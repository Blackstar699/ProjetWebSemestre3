import React, { useState, useEffect } from "react";
import "./Top.css";
function Top() {

  const [topbarBlack, setTopbarBlack] = useState(false);
  useEffect(() => {
    window.addEventListener("scroll", () => {
      setTopbarBlack(true);
    });
    return () => {
      window.removeEventListener("scroll");
    };
  }, []);

  return (
    <nav className={`${topbarBlack && "top_black"}`}>
      <div className="top_contents">
        <img
          className="top_logo"
          src="./img/logo.png"
        />
        <img
          className="top_avatar"
          src="./img/user.png"
        />
      </div>
    </nav>
  );
}

export default Top;
