# 99 Cent Club Readme
This app was built with a Rails REST API backend with a sqlite3 DB and a React frontend. This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

View thinking behind the app at DATAMODELING.md.

### To get up and running:
_given more time... I would love to add a dockerfile so it would just be one setup command_
This app is split into two parts: frontend app, and backend api. The former is in the client/ folder, with the latter being in the server/folder.
- API: From the main directory, cd into /server. Run `bundle install`, then `rails db:migrate`. **To get a prefilled database: also run `rails db:seed`** Start the server with `rails s` / `rails server`. (You will need Rails 5 installed locally.) The app will be running locally on port 3000. 
- Frontend: cd into /client. Run `yarn install`, then run `npm start`. The app will start running on port 3001.

## Testing
- API: In the /server folder, run `bundle exec rake`. The testing suite runs on rspec and uses FactoryBot for fixtures.
- Frontend: In the /client folder, run `npm test`.
