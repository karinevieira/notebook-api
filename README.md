# Notebook API

Building an API using Ruby on Rails 6 and authentication with devise token auth.

This API follow specification for JSON:API.

<table>
  <tr>
    <td>Ruby Version</td>
    <td>2.5.8</td>
  </tr>
  <tr>
    <td>Rails Version</td>
    <td>6.0.4.6</td>
  </tr>
  <tr>
    <td>Database</td>
    <td>PostgreSQL</td>
  </tr>
</table>

## Installation

```bash
  # clone the project
  git clone https://github.com/karinevieira/notebook-api.git

  # enter the cloned directory
  cd notebook-api

  # run the project
  docker-compose up --build

  # create the development and test databases
  rails db:create

  # migrate tables to database
  rails db:migrate
  rails db:migrate RAILS_ENV=test
```
Open the browser at the address http://localhost:3000 

## Running Tests

To run tests, run the following command

```bash
  rspec
```

## API Reference

#### Include Headers

Include the header for all requests:

```bash
  Accept: 'application/vnd.api+json'
```

Include the headers for the follow requests:

- Logout
- Edit user
- Edit the user password
- Delete user
- Create contact
- Edit contact
- Delete contact

```bash
  uid: 'userEmail'
  client: 'userClient'
  access-token: 'UserAccessToken'
```

#### Endpoints

| Endpoints                 | Usage                                  | Params                                          |
|---------------------------|----------------------------------------|-------------------------------------------------|
| ``POST /api/auth``        | Create a new user.                     | email: [String], password: [String], password_confirmation: [String]   |
| ``PUT /api/auth``         | Edit the user information.             | name: [String], nickname: [String], email: [String]                    |
| ``PUT /api/auth``         | Edit the user password.                | current_password: [String], password: [String], password_confirmation: [String]|
| ``POST /api/auth``        | Forgot the user password.             | email: [String]                                                         |
| ``DELETE /api/auth``      | Remove the user.                       |                                                                        |
| ``POST /api/auth/sign_in``| Login user's session.                  | email: [String], password: [String]                                    |
| ``DELETE /api/auth/sign_out`` | Logout user's session.             |                                                                        |
| ``GET /api/contacts``           | Get all contacts.         |                                                                        |
| ``GET /api/contacts/:id``       | Get details of a single contact. |                                                                        |
| ``POST /api/contacts``          | Create a new contact.            | name: [String], email: [String], kind: [Integer]                                        |
| ``PUT /api/contacts/:id``       | Edit the details of an existing contact. | name: [String], email: [String], kind: [Integer]                                |
| ``DELETE /api/contacts/:id``    | Remove the contact.                      |                                                                |