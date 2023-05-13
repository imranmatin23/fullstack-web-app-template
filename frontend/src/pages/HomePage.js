import React from "react";
import axios from "axios";
import "../styles/HomePage.css";

function HomePage() {
  axios
    .get("/api/room")
    .then((response) =>
      console.log(`Number of Rooms in the database: ${response.data.length}`)
    )
    .catch((error) => {
      console.error("There was an error!", error);
    });

  return (
    <div className="home">
      <div>
        <h2> Fullstack Web App Template</h2>
      </div>
      <p>
        This is the home page! Open the Javascript console in your browser to
        see the number of rooms in the database.
      </p>
    </div>
  );
}

export default HomePage;
