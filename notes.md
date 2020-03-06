#Objective of this CLI (v1): 

#Allow users to input location information and return different weather data based on those locations. This CLI is designed to provide hyperlocal weather to you.



1. flow
2. classes 
    2a. class relationships
-   
Classes: 

- Location
    Here I have class methods for each weather attribute. 
- API 
- CLI (methods and scenarios)

Data retrieval method: 
- I used the OpenWeather api and used a key for this. Originally I was going to have users select a zip code and have them choose wherever in US they were but this required calling the API url each time or using data bundles which weren't totally up to date. I opted to pull in data using the lat and long of New York City as a reference point. From there the API allowed me to choose up to 50 cities in the surrounding area. Pulling data this way allowed me to bring in data from multiple cities at once without having to keep calling the url of the API and using string interpolation in the url. I ended up choosing 20 cities for users to select from for this project. 

    