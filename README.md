# Burp Scan Report Uploader to DefectDojo

This project provides a streamlined method to upload Burp Suite scan reports into [DefectDojo](https://github.com/DefectDojo/django-DefectDojo) using a Dockerized approach.

## Prerequisites

- [Docker](https://www.docker.com/) installed on your system.
- A running instance of DefectDojo with API access.

## Setup

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/stackednerds/Burp-scan-report-uploader-to-defectdojo.git
   cd Burp-scan-report-uploader-to-defectdojo

2. Create the .env File
You need to create a .env file in the root directory of the project.

bash
Copy
Edit
touch .env
Edit the .env file and add the following environment variables:

env
Copy
Edit
DEFECTDOJO_URL="https://your-defectdojo-instance.com"
DD_API_KEY="your-api-key"
ENGAGEMENT_ID="your-engagement-id"
BURP_REPORT="path/to/burp_report.xml"
DEFECTDOJO_URL: The URL of your DefectDojo instance.
DD_API_KEY: API key for authentication.
ENGAGEMENT_ID: The engagement ID in DefectDojo where the report will be uploaded.
BURP_REPORT: The absolute or relative path to your Burp Suite scan report (XML format).
Make sure your Burp scan report exists at the specified path before proceeding.
