Email Service (Ruby on Rails)
This is a dedicated Ruby on Rails service designed to manage and dispatch transactional emails. It leverages Action Mailer and background processing to ensure high performance and reliability.

🚀 Features
RESTful API: Endpoints to trigger emails from external services or frontend applications.

Action Mailer Integration: Clean, reusable mailer templates using Embedded Ruby (ERB).

Background Jobs: Integrated with Active Job (Sidekiq/Delayed Job) to handle delivery asynchronously.

Environment-Specific Configs: Seamlessly switch between Letter Opener (development), Mailtrap (staging), and SendGrid/AWS SES (production).

Health Checks: Endpoint to verify service and mail server connectivity.

🛠️ Tech Stack
Framework: Ruby on Rails (v7.x preferred)

Language: Ruby (v3.x preferred)

Database: PostgreSQL / MySQL

Job Queue: Sidekiq (requires Redis)

Testing: RSpec / Minitest

📋 Prerequisites
Ensure you have the following installed on your local machine:

Ruby 3.x

Rails 7.x

PostgreSQL

Redis (if using Sidekiq for background jobs)

⚙️ Installation & Setup
Clone the Repository:

Bash
git clone https://github.com/tech-dhawan/email_service.git
cd email_service
Install Dependencies:

Bash
bundle install
Database Configuration:
Update config/database.yml with your credentials, then run:

Bash
rails db:create
rails db:migrate
Environment Variables:
Create a .env file in the root directory and add your SMTP/API details:

Code snippet
SMTP_ADDRESS=smtp.sendgrid.net
SMTP_PORT=587
SMTP_USER_NAME=apikey
SMTP_PASSWORD=your_api_key
DEFAULT_FROM_EMAIL=notifications@yourdomain.com
Start the Server:

Bash
rails server
Start Background Workers (Sidekiq):

Bash
bundle exec sidekiq
🔌 API Usage
Send a Transactional Email
Endpoint: POST /api/v1/emails

Request Body:

JSON
{
  "email": {
    "recipient": "user@example.com",
    "subject": "Welcome!",
    "template_id": "welcome_notice",
    "data": {
      "first_name": "John"
    }
  }
}
🧪 Running Tests
To ensure the mailers and logic are functioning correctly, run the test suite:

Bash
# Using RSpec
bundle exec rspec

# Using Minitest
rails test
📁 Project Structure
app/mailers/: Contains the logic for constructing emails.

app/views/user_mailer/: HTML and Text templates for email content.

app/jobs/: Background job logic for queueing deliveries.

config/initializers/mail.rb: Custom SMTP configurations.

📄 License
This project is open-source and available under the MIT License.
