# Phase 3 Project Guidelines

## Learning Goals

- Build a web basic API with Sinatra and Active Record to support a React
  frontend

## Introduction

Congrats on getting through all the material for Phase 3! Now's the time to put
it all together and build something from scratch to reinforce what you know and
expand your horizons.

The focus of this project is **building a Sinatra API backend** that uses
**Active Record** to access and persist data in a database, which will be used
by a separate **React frontend** that interacts with the database via the API.

## Requirements

For this project, you must:

- Use Active Record to interact with a database.
- Have at least two models with a one-to-many relationship.
  - Available Models
      - Patient 
      - Booking
      - Consultation
- 
- At a minimum, set up the following API routes in Sinatra:
  - create and read actions for both models
  - full CRUD capability for one of the models
- Build a separate React frontend application that interacts with the API to
  perform CRUD actions.
- Use good OO design patterns. You should have separate classes for each of your
  models, and create instance and class methods as necessary.

Builds Belafonte Community Outreach with a React frontend interface and a
Sinatra backend API, where a user can:

- **Create** a Patient, Appointment record
- **Read** List all patients, List of Appointments/Consultation.
- **Update** Patient and booking information
- **Delete** an entry

## Getting Started

### Backend Setup

This repository has all the starter code needed to get a Sinatra backend up and
running. [**Fork and clone**][fork link] this repository to get started. Then, run
`bundle install` to install the gems.

**Important**: Be sure you fork a copy of the repo into your GitHub account
before cloning it. You can do this by using the link above or by clicking the
"Octocat" button at the top of this page, then clicking "Fork" in the upper
right corner of the repo page.

[fork link]: https://github.com/learn-co-curriculum/phase-3-sinatra-react-project/fork

The `app/controllers/application_controller.rb` file has an example GET route
handler. Replace this route with routes for your project.

You can start your server with:

```console
$ bundle exec rake server
```

This will run your server on port
[http://localhost:9292](http://localhost:9292).

### Frontend Setup

Your backend and your frontend should be in **two different repositories**.

Create a new repository in a **separate folder** with a React app for your
frontend. To do this, `cd` out of the backend project directory, and use
[create-react-app][] to generate the necessary code for your React frontend:

```console
$ npx create-react-app my-app-frontend
```

After creating the project locally, you should also
[create a repository on GitHub][create repo] to host your repo and help
collaborate, if you're working with a partner.

### Fetch Example

Your React app should make fetch requests to your Sinatra backend! Here's an
example:

```js
fetch("http://localhost:9292/test")
  .then((r) => r.json())
  .then((data) => console.log(data));
```
## How To Run It
To install the dependencies: run `bundle install`
  ## Start your server with: `bundle exec rake server`
This will run your server on port http://localhost:9292 (Links to an external site.)

  ## Migrate and Seeding
After creating the model and migrations, run the migrations and use the provided seeds.rb file to seed the database: `bundle exec rake db:migrate db:seed`


## Live Link
Or you can access the web application directly via this [LINK.](link.com/)
*****

## Technologies Used
1. Ruby

*****

## SCREENSHOTS
![Screenshot from 2022-09-12 07-39-35](https://user-images.githubusercontent.com/24671358/189575305-36d5334c-93fc-4b74-aee8-6d1835d31654.png)
![Screenshot from 2022-09-12 07-40-19](https://user-images.githubusercontent.com/24671358/189575308-2a7f93ea-1b30-4c39-a7c2-3550b41c6864.png)
![Screenshot from 2022-09-12 07-40-28](https://user-images.githubusercontent.com/24671358/189575312-25f82bd8-ce0c-44dc-8ba3-3c7998a57bcb.png)

## Resources

- [create-react-app][]
- [dbdiagram.io][]
- [Postman][postman download]

[create-react-app]: https://create-react-app.dev/docs/getting-started
[create repo]: https://docs.github.com/en/get-started/quickstart/create-a-repo
[dbdiagram.io]: https://dbdiagram.io/
[postman download]: https://www.postman.com/downloads/
[network tab]: https://developer.chrome.com/docs/devtools/network/


## Contact Information
* Email : martin.chege@student.moringaschool.com
*****

## [License](LICENSE)
MIT License
Copyright (c) 2022 Martin Chege


