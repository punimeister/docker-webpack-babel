# punimeister/webpack-babel

[![Docker Stars](https://img.shields.io/docker/stars/punimeister/webpack-babel.svg)](https://hub.docker.com/r/punimeister/webpack-babel/)
[![Docker Pulls](https://img.shields.io/docker/pulls/punimeister/webpack-babel.svg)](https://hub.docker.com/r/punimeister/webpack-babel/)
[![Docker Automated](https://img.shields.io/docker/automated/punimeister/webpack-babel.svg)](https://hub.docker.com/r/punimeister/webpack-babel/)
[![Docker Build](https://img.shields.io/docker/build/punimeister/webpack-babel.svg)](https://hub.docker.com/r/punimeister/webpack-babel/)

## Source Code

### [webpack-babel:latest](https://github.com/punimeister/docker-webpack-babel/tree/master/latest)

## Environment Variables

### `MODE`

Will be used for webpack mode

### `ENTRY`

Will be used for webpack entry point

### `OUT_DIR`

Will be used for webpack output directory

### `OUT_FILE`

Will be used for webpack output filename

## Example

### Directory structure

```
.
├── .gitignore
├── docker-compose.yml
└── web
    ├── public
    │   └── index.html
    └── src
        └── entry.js
```

### .gitignore

```
node_modules
*.js.map
```

### docker-compose.yml

```
version: '3'

services:

  webpack-babel:
    image: 'punimeister/webpack-babel'
    restart: 'on-failure'
    environment:
      MODE: 'development'
      ENTRY: './web/src/entry.js'
      OUT_DIR: './web/public'
      OUT_FILE: 'bundle.js'
    volumes:
    - '.:/app'
```

### index.html

```
<!doctype html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>webpack babel testing</title>
</head>
<body>
  <div id="test"></div>
  <script src="bundle.js"></script>
</body>
</html>
```

### entry.js

```
document.getElementById('test').innerText = 'hello webpack';
```

