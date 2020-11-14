# Création de la DB et import des données 
docker exec mysql mysqladmin -uroot -pmypass123 ping
echo Création de la DB et import des données 
docker exec mysql mysql -uroot -pmypass123 -e "create  database binch"
docker exec -i mysql mysql -uroot -pmypass123 binch < dataset/breweries.sql
docker exec -i mysql mysql -uroot -pmypass123 binch < dataset/beers.sql
docker exec -i mysql mysql -uroot -pmypass123 binch < dataset/categories.sql
docker exec -i mysql mysql -uroot -pmypass123 binch < dataset/styles.sql

echo Maintenant tu peux retourner sur PhpMyAdmin et jouer à SQL en choissant la base de données \"binch\" !

echo quand tu veux tout supprimer, appelle \"docker rm -f mysql phpmyadmin\"