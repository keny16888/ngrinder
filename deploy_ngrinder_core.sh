#!/bin/bash

mvn -pl ngrinder-core -am -Dmaven.test.skip=true clean package deploy
