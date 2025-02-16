Book Lending Library App

This is a simple Book Lending Library application built using Ruby on Rails. The application allows users to manage books (create, view, update, delete) and track their lending history without requiring authentication. Users can borrow and return books by providing their names, and the system maintains a record of each borrowing transaction.



![Screenshot 2025-02-16 180621](https://github.com/user-attachments/assets/663fa0a0-5d63-4b57-b8ed-c70ad2d04aab)

![Screenshot 2025-02-16 180547](https://github.com/user-attachments/assets/27a05cf7-52a7-4ea5-9296-54722acdf1c3)


## Prerequisites

Ensure you have the following installed:

- **Ruby**: Version 3.4.0 or higher
- **Rails**: Version 8.0
- **SQLite3** (for the database)
- **Bundler** (for managing dependencies)

## Installation and Setup

1. **Clone the repository:**
   ```sh
   git clone https://github.com/your-username/book_lending_library.git
   
   cd book_lending_library
   
Install dependencies:

bundle install

Set up the database:

bin/rails db:create

bin/rails db:migrate

Seed the database (if applicable):

bin/rails db:seed

Running the Application

To start the Rails server, run:


bin/rails server

Then, open your browser and visit: http://localhost:3000

Database Management

Check migration status:

bin/rails db:migrate:status
Reset the database (if needed):

bin/rails db:reset

Migrate the test database:

bin/rails db:migrate RAILS_ENV=test

Running Tests

This application includes model and controller tests.

To run the test suite, use:


bin/rails test

To run only model tests:


bin/rails test test/models

To run only controller tests:

bin/rails test test/controllers


For production deployment, follow these steps:

Precompile assets:

RAILS_ENV=production bin/rails assets:precompile

Run migrations on the production database:

RAILS_ENV=production bin/rails db:migrate

Start the server in production mode:

RAILS_ENV=production bin/rails server

Additional Notes

If you encounter any issues, check the logs:

bin/rails logs

If database changes are not reflecting, reset the database:

bin/rails db:reset

.

