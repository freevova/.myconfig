sudo add-apt-repository -y "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main"
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

sudo apt-get update -y

sudo apt-get -y install postgresql postgresql-contrib libpq-dev
sudo -u postgres createuser -P --interactive


#----------------setup posgress user
# su - postgres
# psql
#
# Give the postgres user a new password with command below:
# \password postgres
# Enter new password:
#
# Next, create a new role named 'rails-dev' for the rails development with the command below:
# create role rails_dev with createdb login password 'aqwe123';
