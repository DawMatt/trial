# Instructions from:
# https://www.npmjs.com/package/tech-radar-generator
# https://github.com/dprgarner/tech-radar-generator

# Note: radar.json in current folder is embedded in the image

export version=`git rev-parse HEAD`
docker build --tag my-tech-radar:latest --tag my-tech-radar:0.5.2 --tag my-tech-radar:$version .

# Run radar in background and open in browser

docker run -d --rm -p8080:8080 my-tech-radar:latest

open http://localhost:8080

echo Use "docker kill <containerid>" to clean up container once finished
