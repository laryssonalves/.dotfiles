echo "Running postgresql.sh"

read -e -p "Install PostgreSQL database? [y/n] " INSTALLPG

if [ "$INSTALLPG" = "y" ]; then
  echo "Installing -> postgresql"
  sudo apt install postgresql -y
  sudo service postgresql start
  echo
  echo "You will now set the default password for the postgres user."
  echo "When the psql terminal open, enter:"
  echo
  echo "\\password postgres"
  echo
  echo "Once password defined, enter: "
  echo
  echo "\\q"
  echo
  echo "START psql --------"
  sudo -u postgres psql postgres
  echo "END psql --------"
fi
