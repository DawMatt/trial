# Instructions from:
# https://www.npmjs.com/package/tech-radar-generator
# https://github.com/dprgarner/tech-radar-generator

# Note: radar.json in current folder is embedded in the image

docker build --tag my-tech-radar:0.5.2 .

# Run radar and open in browser

docker run -p8080:8080 my-tech-radar:0.5.2

open http://localhost:8080
