until mysqladmin ping -h mysql -P 3306 -u root -ppass; do
  echo 'waiting for mysqld to be connectable...'
  sleep 2
done
echo "app is starting...!"
exec go run ../main.go