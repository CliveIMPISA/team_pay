# NBA Salary Scrape Web Service
## A simple version of nbasalaryscrape web Service

>Handles


    * GET /api/v1/:teamname.json/.json

        * returns JSON of all players and their salary information


    * POST /api/v1/check

        * takes JSON: name of team and name of players
        * returns array of salary information for the specified players
### Usage
````
		{
		"teamname": ["PHO"],
		"player_name": ["Archie Goodwin", "Marcus Morris"]
		}
````
    * POST /api/v1/check2

          * takes JSON: name of team and name of players
          * returns array of salary totals for the specified players
### Usage
````
		{
		"teamname": ["PHO"],
		"player_name": ["Archie Goodwin", "Marcus Morris"]
		}
````
    * POST /api/v1/players/:teamname.json

          * takes JSON: name of team
          * returns array of all the names of players on the team
### Usage
````
		{
		"teamname": ["PHO"],
		"player_name": ["Archie Goodwin", "Marcus Morris"]
		}
````
