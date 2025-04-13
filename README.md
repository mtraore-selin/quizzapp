Quizz APp

---

# 🚀 Local Startup

## 1. Update Configuration

Edit the file [`application-local.yml`](backend/src/main/resources/application-local.yml) to configure the following:

- Your **Google** and **GitHub OAuth2 client credentials**
- A **secret key** to sign JWT tokens
- An **admin email address** to identify the ADMIN user

> Refer to the _Backend Security Layer Overview_ for detailed explanations.

---

## 2. Start the Database

From the `database/` directory, run:

```sh
cd database/
docker compose up
```

This will start your local database service using Docker.

---

## 3. Start the Backend Project

From the `backend/` directory, run the Spring Boot application with the `local` profile:

```sh
cd backend/
mvn spring-boot:run -Dspring-boot.run.profiles=local
```

---

## 4. Start the Frontend Project

From the `frontend/` directory:

```sh
cd frontend/
npm ci         # Run once to install dependencies
npm start
```

Your application will be accessible at: [http://localhost:3000](http://localhost:3000)

---

# ☁️ Deployment on AWS

## 1. Install Docker on EC2 Instance

SSH into your EC2 instance:

```sh
ssh -i <ec2-ssh-key> ubuntu@<ec2-host>
```

Then install Docker using the official script:

```sh
curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
```

Add your user to the Docker group to run commands without `sudo`:

```sh
sudo usermod -aG docker $USER
newgrp docker
```

---

## 2. Copy Docker and Nginx Config Files

Upload the Docker Compose and Nginx config files to the EC2 instance:

```sh
scp -i <ec2-ssh-key> aws/docker-compose.yml ubuntu@<ec2-host>:docker-compose.yml
ssh -i <ec2-ssh-key> ubuntu@<ec2-host> "mkdir -p nginx/conf"
scp -i <ec2-ssh-key> aws/nginx.http.conf ubuntu@<ec2-host>:nginx/conf/nginx.http.conf
```

> 🔐 The `nginx.http.conf` is used initially. You'll switch to `nginx.https.conf` after the SSL certificate is ready.

---

## 3. Start Services and Generate SSL Certificate

SSH into the EC2 instance and start the containers:

```sh
ssh -i <ec2-ssh-key> ubuntu@<ec2-host>
docker compose up -d
```

Then generate your SSL certificate using Certbot:

```sh
docker compose run certbot certonly --webroot --webroot-path /var/www/certbot/ -d quizzapp.xyz
sudo ls -al certbot/conf/live/quizzapp.xyz/
```

---

## 4. Upload HTTPS Nginx Config

```sh
scp -i <ec2-ssh-key> aws/nginx.https.conf ubuntu@<ec2-host>:nginx/conf/nginx.https.conf
```

---

## 5. Restart Services with HTTPS Config

```sh
ssh -i <ec2-ssh-key> ubuntu@<ec2-host>
docker compose restart
```

---

✅ Your application should now be running securely with HTTPS and accessible via your custom domain!

Some issue:
~/Documents/JAVA/quizzapp   10s  15:14:55 ─╮
❯ code ~/.ssh/config

save this in the config
Host quizzapp
HostName ec2-51-20-133-88.eu-north-1.compute.amazonaws.com
User ubuntu
IdentityFile ~/.ssh/mtckey

run : scp -i ~/.ssh/mtckey aws/docker-compose.yml ubuntu@ec2-51-20-133-88.eu-north-1.compute.amazonaws.com:docker-compose.yml
run : ssh -i ~/.ssh/mtckey ubuntu@ec2-51-20-133-88.eu-north-1.compute.amazonaws.com "mkdir -p nginx/conf"
