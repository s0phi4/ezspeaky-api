# EzSpeaky API

## Technologies Used

- Rails
- Scaffold the tables needed with attributes required.
- Use of protected controller for user to see therapies and create comments and open read controller for videos.

## Links to EzSpeaky API essentials

-   [EzSpeaky Deployed App](https://yenpraja610.github.io/ezspeaky/)
-   [EzSpeaky Front end Repo Repo](https://github.com/yenpraja610/ezspeaky)
-   [Deployed API](https://ezspeaky.herokuapp.com/)
-   [EzSpeaky ERD](http://i.imgur.com/mw2TWyL.jpg)

## API routes

- users
- therapies
- comments
- videos

## Approach

- Identify tables needed and relationships, as well as attributes for each table. I struggled setting up the relationship because I provide most of the information in the app for therapies and the videos that belong to each therapy. In order to fulfill requirements, I found a way for users to CRUD on the app, through comments; this is a join table between users and therapies. Protected controllers are used for comments and therapies and an open controller was used for videos.

## Major hurdle

- Not major hurdles but once I update the app, I would like to add more tsbles that allow me to displayt interactive therapies for kids and parents. 
