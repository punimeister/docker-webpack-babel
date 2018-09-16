#! /bin/sh
if [ -z "${ENTRY}" ]; then
  echo "Environment variable 'ENTRY' is required."
  exit
fi
if [ -z "${OUT_DIR}" ]; then
  echo "Environment variable 'OUT_DIR' is required."
  exit
fi
if [ -z "${OUT_FILE}" ]; then
  echo "Environment variable 'OUT_FILE' is required."
  exit
fi
if [ "${MODE}" = "development" ]; then
  npx webpack --config webpack.dev.js
elif [ "${MODE}" = "production" ]; then
  npx webpack --config webpack.prod.js
else
  echo "Environment variable 'MODE' is 'development' or 'production'."
  exit
fi
