# build
docker build -t mur6/httphello .

# run
docker run --rm -p 8000:8000 mur6/httphello

# push
docker push mur6/httphello