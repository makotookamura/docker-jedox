# docker-jedox
## what is this

This is jedox image installed with docker container.

## Requirements

- docker
- docker-compose

## how to use

### download and install

```
git clone https://makotookamura/docker-jedox
cd docker-jedox
docker-compose up -d
```

you open http://localhost with browser.

### change version

`docker-compose down`
open jedox_install_start.sh with editor and change curl URL.
`docker-compose up -d --build`

### change ports

`docker-compose down`
open docker-compose.yml with editor and change ports definition.
`docker-compose up -d`

