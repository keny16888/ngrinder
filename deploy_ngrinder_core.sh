#!/bin/bash

./mvnw -pl ngrinder-core -am -Dmaven.test.skip=true clean package deploy
