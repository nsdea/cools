# This file is really important, so read and follow its instructions carefully.

# KEYS: BEFORE the equals sign (=)
# VALUES: AFTER the equals sign (=)

# See the lines below with the capslock keys?
# Replace its example/demo values with the actuals ones - make sure you ONLY replace the text AFTER the equals sign (=)!
# The according data needed can be found on the Contabo API page:
# https://my.contabo.com/api/details

# Only modify the VALUES after the equals sign (=)!
# Only modify the following four lines, nothing else in the file.

# IMPORTANT: Keep the two apostrophes ('' symbols) at the beginning and end of API_PASSWORD!

# ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
CLIENT_ID=XX-0000
CLIENT_SECRET=FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF
API_USER=example@mail.com
API_PASSWORD='My_Password123. Keep the apostrophes at the beginning and end!'
# ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

# Now save this file.

# Run it to generate the access token.
# "Done." should appear in the output.

# Rename this file from auth.sh to .auth.sh to hide it from file managers and git.
# → File .auth.sh already exists? Delete it and try again!

# Done! Make sure you followed every step correctly, especially the one with the access token generation.

# ———————————————————————————————————————————————————————————————————————————————————————————

# Don't change the following lines, these are not meant to be edited!
echo "Cools · Generating access token..."
ACCESS_TOKEN=$(curl -d "client_id=$CLIENT_ID" -d "client_secret=$CLIENT_SECRET" --data-urlencode "username=$API_USER" --data-urlencode "password=$API_PASSWORD" -d 'grant_type=password' 'https://auth.contabo.com/auth/realms/contabo/protocol/openid-connect/token' | jq -r '.access_token') > /dev/null
echo "Cools · Access token has been generated."
# DO NOT CHANGE THE CODE ABOVE!

echo "CONTABO_ACCESS=$ACCESS_TOKEN" > .env
echo "Cools · Saved access token."
echo "Cools · Done!"
