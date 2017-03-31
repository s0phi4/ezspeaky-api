# EzSpeaky API

## Technologies Used

- Rails
- Scaffold the tables needed with attributes required.
- Use of protected controller for user to see therapies and create comments and open read controller for videos.

## Installation instructions

- ```bundle install```

## Links to EzSpeaky API essentials

-   [EzSpeaky Deployed App](https://yenpraja610.github.io/ezspeaky/)
-   [EzSpeaky Front end Repo Repo](https://github.com/yenpraja610/ezspeaky)
-   [Deployed API](https://ezspeaky.herokuapp.com/)
-   [EzSpeaky ERD](http://i.imgur.com/mw2TWyL.jpg)

## API routes

|Route     | Verb  |  URI Pattern                  |  Controller#Act  |
|----------|-------|-------------------------------|------------------
| comments | GET   | /comments(.:format)           | comments#index   |
|          | POST  | /comments(.:format)           | comments#create  |
|  comment | GET   | /comments/:id(.:format)       | comments#show    |
|          | PATCH | /comments/:id(.:format)       | comments#update  |
|          | PUT   | /comments/:id(.:format)       | comments#update  |
|          | DELETE| /comments/:id(.:format)       | comments#destroy |
|   videos | GET   | /videos(.:format)             | videos#index     |
|    video | GET   | /videos/:id(.:format)         | videos#show      |
| therapies| GET   | /therapies(.:format)          | therapies#index  |
|  therapy | GET   | /therapies/:id(.:format)      | therapies#show   |
|  sign_up | POST  | /sign-up(.:format)            | users#signup     |
|  sign_in | POST  | /sign-in(.:format)            | users#signin     |
|          | DELETE| /sign-out/:id(.:format)       | users#signout    |
|          | PATCH | /change-password/:id(.:format)| users#changepw   |
|    users | GET   | /users(.:format)              | users#index      |
|     user | GET   | /users/:id(.:format)          | users#show       |

## Approach

- Identify tables needed and relationships, as well as attributes for each table. I struggled setting up the relationship because I provide most of the information in the app for therapies and the videos that belong to each therapy. In order to fulfill requirements, I found a way for users to CRUD on the app, through comments; this is a join table between users and therapies. Protected controllers are used for comments and therapies and an openRead controller was used for videos.

## Major hurdle

- Not major hurdles but once I update the app, I would like to add more tables that allow me to display interactive therapies for kids and parents.
