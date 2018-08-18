# Purl

Purl (Persistent Url) - primitive file hosting with web interface

## Running via Docker

```bash
docker pull zoidenberg/purl
docker volume create purl-db
docker volume create purl-files
docker run --name purl --rm -d -p 8889:80 -v purl-db:/home/app/purl/db -v purl-files:/home/app/purl/public/files -e PURL_HOST=http://current-host-name purl
```

## Using

1) signin/signup on the service

2) create Bucket

3) upload file

4) copy url

5) past it

![Example Image](https://purl.onrails.ru/files/8d4b0ccf-5289-4dee-b807-9a0d7891e1f4.jpg)

## License

This project rocks and uses MIT-LICENSE.
