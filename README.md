Book Lending Library App

This is a simple Book Lending Library application built using Ruby on Rails. The application allows users to manage books (create, view, update, delete) and track their lending history without requiring authentication. Users can borrow and return books by providing their names, and the system maintains a record of each borrowing transaction.



![Screenshot 2025-02-16 180621](https://github.com/user-attachments/assets/663fa0a0-5d63-4b57-b8ed-c70ad2d04aab)

![Screenshot 2025-02-16 180547](https://github.com/user-attachments/assets/27a05cf7-52a7-4ea5-9296-54722acdf1c3)

# Book Lending Library App

This is a simple Book Lending Library application built using Ruby on Rails. The application allows users to manage books (create, view, update, delete) and track their lending history without requiring authentication. Users can borrow and return books by providing their names, and the system maintains a record of each borrowing transaction.

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

sh
Copy
Edit
bundle install
Set up the database:

sh
Copy
Edit
bin/rails db:create
bin/rails db:migrate
Seed the database (if applicable):

sh
Copy
Edit
bin/rails db:seed
Running the Application
To start the Rails server, run:

sh
Copy
Edit
bin/rails server
Then, open your browser and visit: http://localhost:3000

Database Management
Check migration status:
sh
Copy
Edit
bin/rails db:migrate:status
Reset the database (if needed):
sh
Copy
Edit
bin/rails db:reset
Migrate the test database:
sh
Copy
Edit
bin/rails db:migrate RAILS_ENV=test
Running Tests
This application includes model and controller tests.

To run the test suite, use:

sh
Copy
Edit
bin/rails test
To run only model tests:

sh
Copy
Edit
bin/rails test test/models
To run only controller tests:

sh
Copy
Edit
bin/rails test test/controllers
Services
Job Queues: Not implemented
Cache Servers: Not implemented
Search Engines: Not implemented
Deployment Instructions
For production deployment, follow these steps:

Precompile assets:
sh
Copy
Edit
RAILS_ENV=production bin/rails assets:precompile
Run migrations on the production database:
sh
Copy
Edit
RAILS_ENV=production bin/rails db:migrate
Start the server in production mode:
sh
Copy
Edit
RAILS_ENV=production bin/rails server
Additional Notes
If you encounter any issues, check the logs:
sh
Copy
Edit
bin/rails logs
If database changes are not reflecting, reset the database:
sh
Copy
Edit
bin/rails db:reset

.

