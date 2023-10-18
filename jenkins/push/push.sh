#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"
echo "pass: $PASS"
echo "** Logging in ***"
docker login -u buinguyen -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG buinguyen/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push buinguyen/$IMAGE:$BUILD_TAG
