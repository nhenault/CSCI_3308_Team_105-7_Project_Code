# The Botanizer

The Botanizer is a plant care database which allows users to obtain care information for a variety of plants.

## Organization

Top Directory: The top directory contains files for locally launching a project server at localhost:3000

BackEnd: The BackEnd directory contains dump files for our databases, allowing users to generate a database with all information used.

node_modules/resources: The node_modules and resources directories contain resources and dependencies used by the project.

views: The views directory contains the EJS source code used by the project.

## How to Use

### Setup

1. Clone the repository to pull in all source code.
2. Start posgreSQL with the command
```bash
sudo -u postgres psql
```
3. Create a database called botanizer with the command
```bash
create database botanizer;
```
4. Exit psql with the command
```bash
\q
```
5. Navigate to the project's backend directory in a terminal.
6. Once there, enter the following commands in the terminal to generate the necessary database tables
```bash
psql botanizer < plantdb.sql
psql botanizer < logindb.sql
```
7. Set postgreSQL to run in the background with the command
```bash
sudo -u postgres service postgresql start
```
8. Navigate to the project top directory in a terminal.
9. Launch the server with the command
```bash
node server.js
```
10. Launch the project by opening a browser and navigating to [localhost:3000/login](localhost:3000/login)

### Pages

##### Landing Page (/login or /) (Non-functional)

Following the Setup instructions above or selecting the logo in the navbar will bring you to the landing/login page.
Here, users can register and login.

##### Search Page (/searchpage) (Non-functional)

Clicking on the search link in the navbar or navigating to localhost:3000/searchpage will lead the user to the search page.
Here, users can enter a plant they would like to search for and include filters to remove plants based on care criteria.

##### FAQ Page (/faq)

Clicking on the FAQ link in the navbar or navigating to localhost:3000/faq will lead the user to the FAQ Page.
Here, users can see a drop down menu of some Frequently Asked Plant Care Questions. Each question has a short answer and a link to an external source with more detailed information.

##### Survey Page (/survey) (Non-functional)

Clicking on the Survey link in the navbar or navigating to localhost:3000/survey will lead the user to the Plant Match Survey Page.
Here, usesr can fill out a survey of the care conditions they are able to or would like to provide a plant with and, after submitting the survey, will be matched with a plant which fits their inputs.

##### Map Page (/map)

Clicking on the Plant Map link in the navbar or navigating to localhost:3000/map will lead the user to the Plant Map.
Here, users can see a map of the world with some countries highlighted. Selecting a highlighted country will tell the user what the national plant of that country is.