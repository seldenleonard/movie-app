/* global axios */

axios
  .get("https://calm-beach-81198.herokuapp.com/#/api/actors")
  .then(function (response) {
    var actors = response.data;
    console.log(actors);
  });
