/***********************
  Load Components!

  Express      - A Node.js Framework
  Body-Parser  - A tool to help use parse the data in a post request
  Pg-Promise   - A database tool to help use connect to our PostgreSQL database
***********************/
var express = require('express'); //Ensure our express framework has been added
var app = express();
var bodyParser = require('body-parser'); //Ensure our body-parser tool has been added
app.use(bodyParser.json());              // support json encoded bodies
app.use(bodyParser.urlencoded({ extended: true })); // support encoded bodies

//Create Database Connection
var pgp = require('pg-promise')();

/**********************
  Database Connection information
  host: This defines the ip address of the server hosting our database.  We'll be using localhost and run our database on our local machine (i.e. can't be access via the Internet)
  port: This defines what port we can expect to communicate to our database.  We'll use 5432 to talk with PostgreSQL
  database: This is the name of our specific database.  From our previous lab, we created the football_db database, which holds our football data tables
  user: This should be left as postgres, the default user account created when PostgreSQL was installed
  password: This the password for accessing the database.  You'll need to set a password USING THE PSQL TERMINAL THIS IS NOT A PASSWORD FOR POSTGRES USER ACCOUNT IN LINUX!
**********************/
const dbConfig = {
	host: 'localhost',
	port: 5432,
	database: 'botanizer',
	user: 'postgres',
	password: 'botanizer'
};

var db = pgp(dbConfig);

// set the view engine to ejs
app.set('view engine', 'ejs');
app.use(express.static(__dirname + '/'));//This line is necessary for us to use relative paths and access our resources directory

// Plant info Render
// Occurs after a get request, which is triggered by a user selecting a plant from the search results
app.get('/PlantInfo', function(req, res)
{
  var plantId = req.query.plant_choice;   // TODO: The 'plant_choice' part of this variable may need to change based on how Shiyue sets up the request
  var plantCare = 'SELECT * FROM plantDatabase WHERE id = ' + plantId + ';';

  db.any(plantCare)
    .then(info =>
    {
      res.render('pages/PlantInfo',
      {
        plantCareInfo: info
      })
    })
    .catch(err =>
    {
      // Display error message if an error occurs
      console.log('error', err);
      response.render('pages/PlantInfo',
      {
        plantCareInfo: ''
      })
    })
})

// Open up the server port to allow rendering
app.listen(3000);
console.log('3000 is the magic port');
