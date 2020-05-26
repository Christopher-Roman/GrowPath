# GrowPath

## Description 
Gardening is a lot of fun. It is a great hobby that offers people an opportunity to nurture a living organism and watch it grow without all of the commitment of a pet. Gardeners are also able to directly impact the way their plant grows through training, feeding, environment and so much more. But, how do you remember everything you’ve done over the course of a month, or three months, or a year? What if something you did impacted the plant in a miraculously amazing way? Or, what if it had a negative impact? You could just write it down on a white board or start a note on your phone. Maybe put a post-it somewhere? But, what happens when you need it? Did you remember to put the date on it? Which plant was that post-it about? GrowPath will timestampe entries to specific plants. Efficiently and effectively create data points for each of your plants to bring your gardening game to the next level!

## Wireframes
Click [here](https://docs.google.com/presentation/d/1SvUTaLfL8Cv_mXX7UQPjqLm7LohbV2SDwh0RUl9ZSm0/edit?usp=sharing) for Wireframes

## SRS
Click [here](https://docs.google.com/document/d/1TH_huXdMctxoSF-WkSQ0HFoaGlnxGkTIJhWjwFPSSek/edit?usp=sharing) for SRS

## Trello
Click [here](https://trello.com/b/UIehvT2h/growpath) for Trello Board

## User Story
### MVP Functionality:

- Users will be able to add plants to track
- Users will be able choose what type of entry they are making for a specific plant (i.e. feeding, watering, defoil, etc).
- Users will be able to list all entries for a single plant in their garden and sort based on entry type.
- Users will have full CRUD on all entries and plants added to their profile.
- Users will be able to attach pictures to their entries.
- Users will be able to use the app to find information about their plants using API calls

### Post-MVP Functionality:

- Users will be able to utilize other accounts to log in utilizing oAuth
- Users will be able to set reminder  email/calendar/notifications to care for their plants
- Users will be able to export plant data to Excel spreadsheets

### Future Commercial Use Functionality:

- Machine learning to offer suggestions based on data entries
- Camera integration and photo recognition to find and treat unhealthy plants or pests
- Smart devices to control grow environment (i.e. temperature, RH, pH levels, etc)
- Smart irrigation dashboard

## App Tech
- Ruby on Rails
- PostgreSQL
- React Native

## App Resources


|User Resource
|---------------------------------------------|
|User has many plants (User ID as foreign key)|
|username: String|
|email: String|
|garden_type: String|
|experience_level: String|
|notification: Boolean|


Plant Resource

Plant has many Entries
Plant has one Harvest
plant_name: String
plant_type: String
flowering: Boolean
state_of_growth: String
grow_medium: String
clone: Boolean
planted: Date
seed_supplier: String
plant_height: Float
plant_width: Float


Entry Resource
*There are four entry types. Watering, feeding, defoliate, and general check-up.*

*All entry types will have the following required attributes:*

entry_type: String
adhoc_notes: Text
growth_phase: String
overall_health: Text




Watering Entry:

water_ph: Float
water_volume: Float
ppm: Number
runoff_amount: Float
runoff_ph: Float



Feeding Entry:

water_ph: Float
water_volume: Float
ppm: Number
runoff_amount: Float
runoff_ph: Float
fertilizer_used: String



Defoliate

leaves_removed: Boolean
flowers_removed: Boolean
leaf_health: String
flower_health: String
pests: Boolean


General Check-Up:

Only required attributes


Harvest Resource

harvest_type: String
total_yield: Float


## API
[Trefle Plant API](https://trefle.io/)


