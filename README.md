# GrowPath

### Description

Gardening is a lot of fun. It is a great hobby that offers people an opportunity to nurture a living organism and watch it grow without all of the commitment of a pet. Gardeners are also able to directly impact the way their plant grows through training, feeding, environment and so much more. But, how do you remember everything you’ve done over the course of a month, or three months, or a year? What if something you did impacted the plant in a miraculously amazing way? Or, what if it had a negative impact? You could just write it down on a white board or start a note on your phone. Maybe put a post-it somewhere? But, what happens when you need it? Did you remember to put the date on it? Which plant was that post-it about? GrowPath will timestampe entries to specific plants. Efficiently and effectively create data points for each of your plants to bring your gardening game to the next level!

### Wireframes

Click [here](https://docs.google.com/presentation/d/1SvUTaLfL8Cv_mXX7UQPjqLm7LohbV2SDwh0RUl9ZSm0/edit?usp=sharing) for Wireframes

### SRS

Click [here](https://docs.google.com/document/d/1TH_huXdMctxoSF-WkSQ0HFoaGlnxGkTIJhWjwFPSSek/edit?usp=sharing) for SRS

### Trello

Click [here](https://trello.com/b/UIehvT2h/growpath) for Trello Board

### User Story

#### MVP Functionality:

-Users will be able to add plants to track
-Users will be able choose what type of entry they are making for a specific plant (i.e. feeding, watering, defoil, etc).
-Users will be able to list all entries for a single plant in their garden and sort based on entry type.
-Users will have full CRUD on all entries and plants added to their profile.
-Users will be able to attach pictures to their entries.
-Users will be able to use the app to find information about their plants using API calls

#### Post-MVP Functionality:

-Users will be able to utilize other accounts to log in utilizing oAuth
-Users will be able to set reminder  email/calendar/notifications to care for their plants
-Users will be able to export plant data to Excel spreadsheets

#### Future Commercial Use Functionality:

-Machine learning to offer suggestions based on data entries
-Camera integration and photo recognition to find and treat unhealthy plants or pests
-Smart devices to control grow environment (i.e. temperature, RH, pH levels, etc)
-Smart irrigation dashboard

### App Tech

-Ruby on Rails
-PostgreSQL
-React Native

### App Resources

#### User Resource

<dl>
  <dt>User has many plants (User ID as foreign key)</dt>
	<dd>username: String</dd>
	<dd>email: String</dd>
	<dd>garden_type: String</dd>
	<dd>experience_level: String</dd>
	<dd>notification: Boolean</dd>
</dl>

#### Plant Resource

<dl>
	<dt>Plant has many Entries</dt>
	<dt>Plant has one Harvest</dt>
	<dd>plant_name: String</dd>
	<dd>plant_type: String</dd>
	<dd>flowering: Boolean</dd>
	<dd>state_of_growth: String</dd>
	<dd>grow_medium: String</dd>
	<dd>clone: Boolean</dd>
	<dd>planted: Date</dd>
	<dd>seed_supplier: String</dd>
	<dd>plant_height: Float</dd>
	<dd>plant_width: Float</dd>
</dl>

#### Entry Resource

**There are four entry types. Watering, feeding, defoliate, and general check-up.**

**All entry types will have the following required attributes:**
<dl>
	<dd>entry_type: String</dd>
	<dd>adhoc_notes: Text</dd>
	<dd>growth_phase: String</dd>
	<dd>overall_health: Text</dd>
</dl>

<dl>
	<dt>Watering Entry:</dt>
	<dd>water_ph: Float</dd>
	<dd>water_volume: Float</dd>
	<dd>ppm: Number</dd>
	<dd>runoff_amount: Float</dd>
	<dd>runoff_ph: Float</dd>
</dl>

<dl>
	<dt>Feeding Entry:</dt>
	<dd>water_ph: Float</dd>
	<dd>water_volume: Float</dd>
	<dd>ppm: Number</dd>
	<dd>runoff_amount: Float</dd>
	<dd>runoff_ph: Float</dd>
	<dd>fertilizer_used: String</dd>
</dl>

<dl>
	<dt>Defoliate</dt>
	<dd>leaves_removed: Boolean</dd>
	<dd>flowers_removed: Boolean</dd>
	<dd>leaf_health: String</dd>
	<dd>flower_health: String</dd>
	<dd>pests: Boolean</dd>
</dl>

<dl>
	<dt>General Check-Up:</dt>
	<dd>Only required attributes
</dl>

#### Harvest Resource

<dl>
	<dd>harvest_type: String</dd>
	<dd>total_yield: Float</dd>
</dl>

### API

[Trefle Plant API](https://trefle.io/)


