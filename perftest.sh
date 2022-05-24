host="fabmedical-628233.mongo.cosmos.azure.com"
username="fabmedical-628233"
password="EGhEF8EZ1eMSJ6pFxeUDyO9rxPfmnnwldNhfjaCy7CUGmJ4l3oKsY9PLkqi8EooOADKgSx4EiyMx0dKb8fNKlw=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
