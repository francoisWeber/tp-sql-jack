DB_PASS=mypass123
# création des dockers
docker run \
    --name mysql \
    -e MYSQL_ROOT_PASSWORD=$DB_PASS \
    -v $PWD/dataset:/dataset\
    -d mysql:latest
docker run \
    --name phpmyadmin  \
    -d  \
    --link mysql:db  \
    -p 8081:80  \
    phpmyadmin/phpmyadmin

# Ouverture des interfaces
sleep 5
open http://localhost:8081/
echo L''interface de PhpMyAdmin s''ouvre dans ton navigateur
echo id/MdP : root / $DB_PASS
# cf https://medium.com/@migueldoctor/run-mysql-phpmyadmin-locally-in-3-steps-using-docker-74eb735fa1fc