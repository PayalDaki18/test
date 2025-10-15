# Path on the EC2 server: /home/ubuntu/mfy-jumpick-PERN/node-backend.sh

#!/bin/bash

set -e

# -----------------------------

# Load NVM and Use Node v20

# -----------------------------

export NVM_DIR="$HOME/.nvm"

if [ -s "$NVM_DIR/nvm.sh" ]; then

. "$NVM_DIR/nvm.sh"

nvm use --delete-prefix v20.18.1 --silent

else

echo "❌ NVM not found!"

exit 1

fi


#step 1: Reset and Pull Latest Code

# -----------------------------

cd /home/ubuntu/mfy-jumpick-PERN

git reset --hard

git pull origin STG


# -----------------------------

# Step 2: Copy .env files

# -----------------------------

cp /home/ubuntu/mfy-jumpick-PERN/node/client/.env /home/ubuntu/mfy-jumpick-PERN/client/.env

cp /home/ubuntu/mfy-jumpick-PERN/node/admin/.env /home/ubuntu/mfy-jumpick-PERN/admin/.env

cp /home/ubuntu/mfy-jumpick-PERN/node/api-gateway/.env /home/ubuntu/mfy-jumpick-PERN/NestServer/api-gateway/.env

cp /home/ubuntu/mfy-jumpick-PERN/node/auth-service/.env /home/ubuntu/mfy-jumpick-PERN/NestServer/auth-service/.env

cp /home/ubuntu/mfy-jumpick-PERN/node/email-service/.env /home/ubuntu/mfy-jumpick-PERN/NestServer/email-service/.env

cp /home/ubuntu/mfy-jumpick-PERN/node/service-registry/.env /home/ubuntu/mfy-jumpick-PERN/NestServer/service-reg.env

cp /home/ubuntu/mfy-jumpick-PERN/node/shared/.env /home/ubuntu/mfy-jumpick-PERN/NestServer/shared/.env

cp /home/ubuntu/mfy-jumpick-PERN/node/user-service/.env /home/ubuntu/mfy-jumpick-PERN/NestServer/user-service/.env

cp /home/ubuntu/mfy-jumpick-PERN/node/NestServer/.env /home/ubuntu/mfy-jumpick-PERN/NestServer/.env

cp /home/ubuntu/mfy-jumpick-PERN/node/admin-service/.env /home/ubuntu/mfy-jumpick-PERN/NestServer/admin-service/.env

