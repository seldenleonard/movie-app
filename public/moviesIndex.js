/* global axios */

axios.get("http://localhost:3000/api/movies").then(function (response) {
  var movies = response.data;
  console.log(movies);
});

// I spent about an hour trying to enable CORS (and was finally successful!), though after no CORS errors in the console for the majority of the time it took me to complete this assignment, just at the end when I believe I got the syntax right for this moviesIndex.js, the CORS error reappeared and I am a bit stumped. I look forward to working with a TA in after hours tomorrow and getting this resolved.
