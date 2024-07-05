# README

Create users with campaign list and filter it using campaign name.

Github URL: https://github.com/sonikamaliya/user_campaign_filtering

To run repository locally clone it from here: https://github.com/sonikamaliya/user_campaign_filtering

open project folder and run bunde

  bundle install

And you can access apis locally through localhost:3000/endpoints

List of APIs for users

1. Retrieve all users from the database.

  Endpoint:  13.126.25.93:3000/users?page=1&per_page=5

  Action: Get

  CURL:

  curl --location '13.126.25.93:3000/users?page=1&per_page=5' \
  --header 'Cookie: __profilin=p%3Dt'

2. Search users based on multiple campaign name.

    Endpoint: 13.126.25.93:3000/users?page=1&per_page=5&search=["campaign 1"]

    Action: Get

    CURL:

      curl --location '13.126.25.93:3000/users?page=1&per_page=5&search=camp1' \
      --header 'Cookie: __profilin=p%3Dt'

3. Add a new user to the database with name, email, and campaigns_list.

    Endpoint    13.126.25.93:3000/users

    Action: Post

    CURL:

    curl --location '13.126.25.93:3000/users' \
    --header 'Content-Type: application/json' \
    --header 'Cookie: __profilin=p%3Dt' \
    --data-raw '{
        "users":{
            "name": "teju",
            "email": "teju@gmail.com",
            "campaigns_list": {{campaigns_list}}
        }
    }'
