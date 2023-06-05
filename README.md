# <div align="center">Sweater Whether</div>


#### <div align="center">The backend application for roadtrip planning</div>


![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

<details close="close">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#gems">Gems</a></li>
        <li><a href="#local-setup">Set Up</a></li>
      </ul>
    </li>
    <li>
      <a href="#overview">Overview</a>
      <details>
        <summary>details</summary>
        <ul>
          <li><a href="#learning-goals-achieved">Learning Goals Achieved</a></li>
          <li><a href="#framework">Framework</a></li>
          <li><a href="#tools">Tools</a></li>
          <li><a href="#development-principles">Development Principles</a></li>
          <li><a href="#contributors">Contributors</a></li>
        </ul>
      </details>
    </li>
    <li>
      <a href="#Endpoints">Endpoints</a>
      <details>
        <summary>available endpoints</summary>
        <ul>
          <li><a href="#Retrieve-weather-for-a-city">Forecast Endpoints</a></li>
          <li><a href="#Retrieve-background-image-for-a-city">Background Endpoints</a></li>
          <li><a href="#Retrieve-weather-appropriate-activities-for-destination">Activity Endpoints</a></li>
          <li><a href="#Register-a-new-user">User Endpoints</a></li>
          <li><a href="#Retrieve-data-for-planning-a-roadtrip">Roadtrip Endpoints</a></li>
        </ul>
      </details>
    </li>
    <li>
      <a href="#Reflection">Reflection</a>
    </li>
  </ol>
</details>

<div align="center">
  
  ![Screen Shot 2022-03-07 at 3 41 42 AM](https://user-images.githubusercontent.com/87088092/157016014-8103f37c-8e34-4947-9ff8-80d502661a81.png)
  
</div>


![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)


## <div align="center">Getting Started</div>

#### Gems:

<p>
  <img src="https://img.shields.io/badge/rspec--rails-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" /> 
  <img src="https://img.shields.io/badge/pry-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />   
  <img src="https://img.shields.io/badge/simplecov-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  </br>
  <img src="https://img.shields.io/badge/bcrypt-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/figaro-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/faraday-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
</p>

*Resource links:*
[rspec-rails](https://github.com/rspec/rspec-rails) | [pry](https://github.com/pry/pry) | [simplecov](https://github.com/simplecov-ruby/simplecov) | [bcrypt](https://github.com/bcrypt-ruby/bcrypt-ruby) | [figaro](https://medium.com/@MinimalGhost/the-figaro-gem-an-easier-way-to-securely-configure-rails-applications-c6f963b7e993) | [faraday](https://github.com/lostisland/faraday)

## Local Setup:

1. Fork and Clone the repo
2. Install gem packages: `bundle install`
3. Set up the database: `rails db:{drop,create,migrate,seed}`
4. Get API keys from [MapQuest](https://developer.mapquest.com/documentation/), [OpenWeather](https://openweathermap.org/api), and [Unsplash](https://unsplash.com/documentation#creating-a-developer-account)
5. Run `figaro install` then enter API keys into your `application.yml` file 
```
map_consumer_key: <enter your key here>
weather_key: <enter your key here>
image_key: <enter your key here>
```


![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)


## <div align="center">Overview</div>

Sweather Whether is a backend application that exposes several external API's to suppot application for planning roadtrips based on weather conditions. 


####  Learning Goals Achieved

* Expose an API that aggregates data from multiple external APIs
* Expose an API that requires an authentication token
* Expose an API for CRUD functionality
* Determine completion criteria based on the needs of other developers
* Research, select, and consume an API based on your needs as a developer


#### Framework:
<p>
  <img src="https://img.shields.io/badge/Ruby%20On%20Rails-b81818.svg?&style=flat&logo=rubyonrails&logoColor=white" />
</p>

#### Languages:
<p>
  <img src="https://img.shields.io/badge/Ruby-CC0000.svg?&style=flaste&logo=ruby&logoColor=white" />
  <img src="https://img.shields.io/badge/ActiveRecord-CC0000.svg?&style=flaste&logo=rubyonrails&logoColor=white" />
</p>

#### Tools:
<p>
  <img src="https://img.shields.io/badge/Atom-66595C.svg?&style=flaste&logo=atom&logoColor=white" />  
  <img src="https://img.shields.io/badge/Git-F05032.svg?&style=flaste&logo=git&logoColor=white" />
  <img src="https://img.shields.io/badge/GitHub-181717.svg?&style=flaste&logo=github&logoColor=white" />
  <img src="https://img.shields.io/badge/Postman-FF6E4F.svg?&style=flat&logo=postman&logoColor=white" />
</p>

#### Development Principles:
<p>
  <img src="https://img.shields.io/badge/OOP-b81818.svg?&style=flaste&logo=OOP&logoColor=white" />
  <img src="https://img.shields.io/badge/TDD-b87818.svg?&style=flaste&logo=TDD&logoColor=white" />
  <img src="https://img.shields.io/badge/MVC-b8b018.svg?&style=flaste&logo=MVC&logoColor=white" />
  <img src="https://img.shields.io/badge/REST-33b818.svg?&style=flaste&logo=REST&logoColor=white" />  
</p>

#### Contributors:

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <!-- Devin -->
  <td align="center"><a href="https://github.com/devin-p-lay"><img src="https://avatars.githubusercontent.com/u/87088092?v=4" width="100px;" alt=""/><br /><sub><b>Devin (he/him)</b></sub></a><br /><a href="https://github.com/devin-p-lay/sweater_whether/commits?author=devin-p-lay" title="Code">💻</a> <a href="#ideas-devin-p-lay" title="Ideas, Planning, & Feedback">🤔</a> <a href="https://github.com/devin-p-lay/sweater_whether/commits?author=devin-p-lay" title="Tests">⚠️</a> <a href="https://github.com/devin-p-lay/sweater_whether/pulls?q=is%3Apr+reviewed-by%3Ajdevin-p-lay" title="Reviewed Pull Requests">👀</a></td>
  </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->
- LinkedIn: [Devin Pile](https://www.linkedin.com/in/devin-pile-162460165/)


![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)


## <div align="center">Endpoints</div>


###  Retrieve weather for a city

<details close="close">
  <summary>Request</summary>

    GET /api/v1/forecast?location=denver,co
  
</details>

<details close="close">
  <summary>Response</summary>
  
    {
      "data": {
        "id": null,
        "type": "forecast",
        "attributes": {
          "current_weather": {
            "datetime": "2020-09-30 13:27:03 -0600",
            "temperature": 79.4,
            etc
          },
          "daily_weather": [
            {
              "date": "2020-10-01",
              "sunrise": "2020-10-01 06:10:43 -0600",
              etc
            },
            {...} etc
          ],
          "hourly_weather": [
            {
              "time": "14:00:00",
              "conditions": "cloudy with a chance of meatballs",
              etc
            },
            {...} etc
          ]
        }
      }
    }
  
 </details>
 
 
###  Retrieve background image for a city

<details close="close">
  <summary>Request</summary>
  
```json
    GET /api/v1/backgrounds?location=denver,co
```
  
</details>

<details close="close">
  <summary>Response</summary>
  
```
status: 200
body:

{
  "data": {
    "type": "image",
    "id": null,
    "attributes": {
      "image": {
        "location": "denver,co",
        "image_url": "https://pixabay.com/get/54e6d4444f50a814f1dc8460962930761c38d6ed534c704c7c2878dd954dc451_640.jpg",
        "credit": {
          "source": "pixabay.com",
          "author": "quinntheislander",
          "logo": "https://pixabay.com/static/img/logo_square.png"
        }
      }
    }
  }
}
```
  
</details>

### Retrieve weather appropriate activities for destination

<details close="close">
  <summary>Request</summary>

    GET /api/v1/activities?destination=chicago,il
  
</details>

<details close="close">
  <summary>Response</summary>
  
```
{
  "data": {
    "id": "null",
    "type": "activities",
    "attributes": {
      "destination": "chicago,il",
      "forecast": {
        "summary": "Cloudy with a chance of meatballs",
        "temperature": "45 F"
      },
      "activities": [
          {"title": "Learn a new recipe",
          "type": "cooking",
          "participants": 1,
          "price": 0},
          {"title: "Take a bubble bath",
          "type": "relaxation",
          "participants": 1,
          "price": 0.5
        }]
      }
    }
  }
```
</details>

### Register a new user

<details close="close">
  <summary>Request</summary>
  
```
  POST /api/v1/users
  Content-Type: application/json
  Accept: application/json

{
  "email": "whatever@example.com",
  "password": "password",
  "password_confirmation": "password"
}
```
  
</details>

<details close="close">
  <summary>Response</summary>
  
```
status: 201
body:

{
  "data": {
    "type": "users",
    "id": "1",
    "attributes": {
      "email": "whatever@example.com",
      "api_key": "jgn983hy48thw9begh98h4539h4"
    }
  }
}

```
</details>

### Log in an existing user

<details close="close">
  <summary>Request</summary>
  
```
POST /api/v1/sessions
Content-Type: application/json
Accept: application/json

{
  "email": "whatever@example.com",
  "password": "password"
}
```
  
</details>

<details close="close">
  <summary>Response</summary>
  
```
status: 200
body:

{
  "data": {
    "type": "users",
    "id": "1",
    "attributes": {
      "email": "whatever@example.com",
      "api_key": "jgn983hy48thw9begh98h4539h4"
    }
  }
}
```
</details>

### Retrieve data for planning a roadtrip

<details close="close">
  <summary>Request</summary>
  
```
POST /api/v1/road_trip
Content-Type: application/json
Accept: application/json

body:

{
  "origin": "Denver,CO",
  "destination": "Pueblo,CO",
  "api_key": "jgn983hy48thw9begh98h4539h4"
}
```
  
</details>

<details close="close">
  <summary>Response</summary>
  
```
{
  "data": {
    "id": null,
    "type": "roadtrip",
    "attributes": {
      "start_city": "Denver, CO",
      "end_city": "Estes Park, CO",
      "travel_time": "2 hours, 13 minutes"
      "weather_at_eta": {
        "temperature": 59.4,
        "conditions": "partly cloudy with a chance of meatballs"
      }
    }
  }
  example
}
```
</details>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)


## <div align="center">Reflection</div>

  I am really proud of what I was able to accomplish from doing this project. This was my first solo project in consuming and exposing APIs. My biggest takeaway (outside of developing sick READMEs) was from combining multiple external APIs to create my own custom methods. By combining everything that I have learned up to this point, all together in the same project, this project is very indicative of my abililities. I do plan to make some refactors like moving some code logic from the controller into the facade and possibly implement serializer gem; I 'handrolled' my serializer for learning purposes.
