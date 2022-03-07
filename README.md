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
        <li><a href="#local-setup">Local Setup</a></li>
      </ul>
    </li>
    <li>
      <a href="#overview">Overview</a>
      <details>
        <summary>details</summary>
        <ul>
          <li><a href="#learning-goals-for-project">Learning Goals Achieved</a></li>
          <li><a href="#framework">Framework</a></li>
          <li><a href="#tools">Tools</a></li>
          <li><a href="#developement_principles">Development Principles</a></li>
          <li><a href="#contributors">Contributors</a></li>
        </ul>
      </details>
    </li>
    <li>
      <a href="#endpoints">Endpoints</a>
      <details>
        <summary>available endpoints</summary>
        <ul>
          <li><a href="#forecast-endpoint">Forecast Endpoints</a></li>
          <li><a href="#background-endpoint">Background Endpoints</a></li>
          <li><a href="#user-endpoint">User Endpoints</a></li>
          <li><a href="#roadtrip-endpoint">Roadtrip Endpoints</a></li>
        </ul>
      </details>
    </li>
  </ol>
</details>

<div align="center">
  
  ![Screen Shot 2022-03-07 at 3 41 42 AM](https://user-images.githubusercontent.com/87088092/157016014-8103f37c-8e34-4947-9ff8-80d502661a81.png)
  
</div>


![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)


## Getting Started

#### Gems
<p>
  <img src="https://img.shields.io/badge/rspec--rails-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/pry-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />   
  <img src="https://img.shields.io/badge/simplecov-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  </br>
  <img src="https://img.shields.io/badge/bcrypt-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/figaro-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/faraday-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
</p> 

#### Local Setup 

1. Fork and Clone the repo
2. Install gem packages: `bundle install`
3. Set up the database: `rails db:{drop,create,migrate,seed}`
4. Get API kes from [MapQuest](https://developer.mapquest.com/documentation/), [OpenWeather](https://openweathermap.org/api), and [Unsplash](https://unsplash.com/documentation#creating-a-developer-account)
5. Run `figaro install` then enter API keys into your 'application.yml' file 
```
map_consumer_key: <enter your key here>
weather_key: <enter your key here>
image_key: <enter your key here>
```


![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)


