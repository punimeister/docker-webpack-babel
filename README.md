# Supported tags and respective `Dockerfile` links

- [`latest` (latest/Dockerfile)](https://github.com/punimeister/docker-webpack-babel/blob/master/latest/Dockerfile)

## Environment Variables

### `MODE`

Will be used for webpack mode

### `EP_*`

Will be used for webpack entry points  
(See example for details)

### `OUTPUT_DIR`

Will be used for webpack output directory

### `OUTPUT_FILE`

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
        ├── entry1.js
        └── entry2.js
```

### .gitignore

```gitignore
node_modules
*.js.map
```

### docker-compose.yml

```yaml
version: '3'

services:

  webpack-babel:
    image: punimeister/webpack-babel
    restart: on-failure
    environment:
      MODE: development
      EP_test1: ./web/src/entry1.js
      EP_test2: ./web/src/entry2.js
      OUTPUT_DIR: ./web/public
      OUTPUT_FILE: '[name].js'
    volumes:
      - .:/app
```

### index.html

```html
<!doctype html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>webpack babel testing</title>
</head>
<body>
  <div id="test"></div>
  <script src="test1.js"></script>
  <script src="test2.js"></script>
</body>
</html>
```

### entry1.js

```javascript
document.getElementById('test').innerText = 'hello webpack';
```

### entry2.js

```javascript
document.getElementById('test').style.color = 'skyblue';
```
