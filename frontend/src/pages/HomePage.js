/*
 * This file defines the HomePage page.
 */

import React from "react";
import axios from "axios";
import "../styles/HomePage.css";

function HomePage() {
  /*
   * This is an example of how Axios can be used to make an HTTP GET request to a backend webserver.
   */
  axios
    .get("/api/room")
    .then((response) =>
      console.log(`Number of Rooms in the database: ${response.data.length}`)
    )
    .catch((error) => {
      console.error("There was an error!", error);
    });

  /*
   * This return statement contains the HTML to be returned and rendered in the browser.
   */
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
