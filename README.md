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
