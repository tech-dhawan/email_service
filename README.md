# Email Service API (Ruby on Rails)

Ruby Version: 3.2.0

Rails Version: 7.1.0

License: MIT

Build Status: Passing

A high-performance, dedicated microservice built with Ruby on Rails for managing and dispatching transactional emails. This service abstracts email logic from your main application, providing a clean API for communication with built-in support for background processing and multiple SMTP providers.

## 🚀 Key Features

RESTful API Interface: Trigger email deliveries via standard JSON POST requests.

Asynchronous Processing: Powered by Sidekiq and Redis to ensure non-blocking application performance.

Action Mailer Integration: Leverages Rails' native mailer for structured, maintainable, and reusable templates.

Dynamic Templating: Full support for HTML and Plain Text templates using ERB (Embedded Ruby).

Error Resilience: Built-in retry mechanisms for SMTP failures and delivery tracking.

Environment Flexibility: Easily switch between development tools like Mailtrap or Letter Opener and production services like SendGrid or AWS SES.

## 🛠️ Tech Stack

Framework: Ruby on Rails 7.x

Language: Ruby 3.x

Database: PostgreSQL (for tracking delivery logs and status)

Background Jobs: Sidekiq

Data Store: Redis (for Sidekiq job queuing)

Testing: RSpec (Unit & Integration)

## 📋 Prerequisites

Ensure your environment meets the following requirements:

Ruby: 3.2.x

Rails: 7.x.x

PostgreSQL: 14+

Redis: 6.2+ (Required for background job processing)

## ⚙️ Installation & Configuration

1. Clone the Repository git clone https://github.com/tech-dhawan/email_service.git

cd email_service

2. Install Ruby Gems bundle install

3. Database Initialization rails db:prepare

4. Environment Variables Create a .env file in the root directory and populate it with your specific configurations:

Database Configuration
DATABASE_URL=postgres://localhost/email_service_development

SMTP / Mailer Configuration
SMTP_ADDRESS=smtp.sendgrid.net

SMTP_PORT=587

SMTP_USER_NAME=your_api_key_username

SMTP_PASSWORD=your_secure_password

SMTP_DOMAIN=your_domain.com

Application Defaults
DEFAULT_SENDER_EMAIL=noreply@yourdomain.com

5. Running the Application Open two terminal instances to run the web server and the background worker simultaneously:

Terminal 1 (Web API): rails server

Terminal 2 (Sidekiq Worker): bundle exec sidekiq

## 🔌 API Documentation

### Send a Transactional Email Endpoint: POST /api/v1/emails/send

Request Headers: Content-Type: application/json

Request Payload: {
"email": {
"to": "client@example.com",
"subject": "Thank you for your inquiry",
"template": "customer_welcome",
"context": {
"first_name": "Rohan",
"action_url": "https://bladeworkstudio.ca"
}
}
}

Responses: * 202 Accepted: Email has been successfully queued for delivery.

422 Unprocessable Entity: Validation error (e.g., missing recipient or invalid template).

## 🧪 Testing & Quality Assurance

This project maintains high code quality standards through automated testing and linting.

Run Test Suite: bundle exec rspec

Run Static Code Analysis (RuboCop): bundle exec rubocop

## 📄 License Distributed under the MIT License. See LICENSE for more information.

## 👤 Author Rohan Dhawan

GitHub: @tech-dhawan

LinkedIn: linkedin.com/in/rohan-dhawan/

Location: Toronto, ON
