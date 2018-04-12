#! /bin/bash

function run {
   spring run *.groovy
}

function jar {
   spring jar nanobe.jar .
}

function dockerBuild {
   spring jar nanobe.jar . && docker-compose build
}

function dockerRun {
   spring jar nanobe.jar . && docker-compose up --build
}

$1
