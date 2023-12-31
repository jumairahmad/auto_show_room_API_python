# PWP SPRING 2023
# PROJECT NAME
# Group information
* Student 1. Sharon Stephen (sstephen21@student.oulu.fi)
* Student 2 .Ijlal Hussain Khan (ijkhan22@student.oulu.fi)
* Student 3. Ramisha Munir Awan 
* Student 4. Hassan Sarwar Waraich

# About
This project provides APIs for a car rental service. For more information about the resources of the APIs and their schemas, please refer to the Swagger documentation [here](https://gitlab.com/ijkhan22/auto-showroom/-/blob/main/car_rental/swagger.yml).
The APIs are currently being hosted on http://195.148.21.89:5000/apidocs/
# Project Setup
The project and its database are designed to run in a container, making it easy to set up. To increase modularity, the database is separated as a microservice.
1. Machine Setup
2. Database Setup
3. Application Setup

## 1. Machine Setup
1. Set up an Ubuntu VM or another Linux machine. 
2. Update the system and install the required dependencies by running the following commands:
```
sudo apt-get update
sudo apt-get install vim
sudo apt-get install docker.io
sudo apt-get install docker-compose
```
## 2. Database Setup
To set up the database, open the command line on the VM:
1. Copy the repository into the VM using git:
   ```
   git clone https://gitlab.com/ijkhan22/auto-showroom.git
   ```
2. Navigate to the database folder:
   ```
   cd auto-showroom/Database
   ```
3. Run the following command to set up the database:
   ```
   docker-compose up -d --build
   ```
4. This command will start the MySQL server, which can be accessed using the VM's IP address and port 8080:
   ```
   http://IP_ADDRESS:8080/
   ```
5. Log in to the server using the password provided in [this ](https://gitlab.com/ijkhan22/auto-showroom/-/blob/main/DataBase/docker-compose.yml)Docker file. Alternatively, you can use another tool like [Navicat](https://www.navicat.com/en/download/navicat-premium ) to access the database.
6. Import the SQL file provided in the project to load the tables and data:

    *   Click on Import and choose the following file: [SQL FILE ](https://gitlab.com/ijkhan22/auto-showroom/-/blob/main/DataBase/car_rental_with_test_data.sql)

    *   The SQL statements in the file will be executed, creating the specified database and tables in the file.

# 2. Application Setup
Setting up the application follows a similar process to the database setup. If you set up the application in a Git repository, it will deploy itself, as the CI/CD pipeline is already configured. You only need to update the IP address in [this](./.gitlab-ci.yml) file. To manually deploy the application, follow these steps:
1. Open the command line on your VM.
2. Clone the repository.
   ```
   git clone https://gitlab.com/ijkhan22/auto-showroom.git
   ```
3. Navigate to the repository folder.
   ```
   cd /auto-showroom
   ```
4. Run the following command for deployment.
   ```
   docker-compose up -d --build
   ```
5. Verify the setup by accessing the documentation link.
   ```
    http://IP_ADDRESS::5000/apidocs/
   ```

# 2. Additional Step

This guide will help you set up an SSH key for your Git account and use it to clone repositories using SSH.

1. Generate an SSH key pair

   Run the following command in the terminal, replacing `your_email@example.com` with the email address associated with your Git account:
   ```
   ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
   ```

   When prompted, press Enter to accept the default file location (`~/.ssh/id_rsa`). You can also set a passphrase if you want, but it's optional.

2. Copy the public SSH key

   Display the content of your public SSH key file by running the following command in the terminal:
   ```
     cat ~/.ssh/id_rsa.pub
      ```
   Select and copy the entire key.

3. Add the SSH key to your Git account

   Follow the instructions below to add the public key to your GitHub or GitLab account.


   1. Go to your GitLab account settings: [https://gitlab.com/-/profile/keys](https://gitlab.com/-/profile/keys)
   2. Click on "Add an SSH key."
   3. Paste the public key content in the "Key" field, and click "Add key."

4. Set up the SSH agent

   Start the SSH agent in the background and add your private SSH key to the agent:
   ```
   eval "$(ssh-agent -s)"
   ssh-add ~/.ssh/id_rsa
   ```

5. Now you can clone the repository using ssh clone
   ```
   git clone git@gitlab.com:ijkhan22/auto-showroom.git
   ```

Note: If you would like the application to be automatically deployed on your VM, you can configure your VM as a runner for your project. To do this, follow the steps provided in the GitLab settings for your project: https://gitlab.com/ijkhan22/auto-showroom/-/settings/ci_cd#   a u t o _ s h o w _ r o o m _ A P I _ p y t h o n  
 