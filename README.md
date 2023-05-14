## Learn Docker

1. Pull sql server image

```js
docker pull mcr.microsoft.com/mssql/server:2019-latest
```

2. Run container from image sql server account: sa(Abc@123456789)

```js
docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=Abc@123456789" --name sql-server-2019 -p 1435:1433 -d mcr.microsoft.com/mssql/server:2019-latest
```

3. Stop container

```js
docker start sql-server-2019
```

4. Start container

```js
docker start sql-server-2019
```

5. Save data to volume

```js
docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=Abc@123456789" --name sql-server-2019 -v my-volum-1:/var/opt/mssql -p 1435:1433 -d mcr.microsoft.com/mssql/server:2019-latest
```

6. Pull mysql

```js
docker pull mysql
```

7. Run container

```js
docker run --name mysql-container -e MYSQL_ROOT_PASSWORD=Abc@123456789 -p 3307:3306 -v mysql-volume:/var/lib/mysql -d mysql
```

8. Login mysql container use bash

```js
docker exec -it mysql-container sh
mysql -u root -p
mysql --protocol=tcp -h localhost -P 3307 -u root -p

```
