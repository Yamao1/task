"Place the parent directory on a web server or local server"


Run

composer install

npm install

php artisan storage:link

Copy the "env.example" file in the root directory and rename it to ".env"


Create database


In .env file update the database configuration variables


Generate APP_KEY - php artisan key:generate


Run migration and seed
######php artisan migrate --seed


P.S.
for reCAPTCHA use domain name  "http://task" 


