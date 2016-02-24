
source install
  https://docs.docker.com/installation/mac/

source seed data
  https://ardoq.com/delightful-database-seeding-with-docker/


  source cross compile docker
    https://github.com/sdt/docker-raspberry-pi-cross-compiler
    https://hub.docker.com/r/sdt4docker/raspberry-pi-cross-compiler/
    https://github.com/thewtex/cross-compilers
    https://github.com/steeve/cross-compiler

  languages
    javascript
    python
    go
    c
    java

  process
    clone repo in correct docker container / vm
    make sure docker image is fresh
    figure out how to build the code
    figure out how to run the code tests
    build ast of code in native language
    transform ast into simpler form using heuristics
      rename variables so they are overall easier to understand?
      format the code
    create documentation for the methods
    create examples for each method
      save the output when the example is run

  docs docker
    https://docs.docker.com/reference/builder/
    https://docs.docker.com/installation/ubuntulinux/

  get_version_of_docker() {
    docker -v # Docker version 1.7.0, build 0baf609
  }

  get_version_of_kernel() {
    uname -r
  }

  process understand cli api

  process understand http api
    find docs
      find official source code repository if exists https://github.com/facebook/facebook-php-sdk-v4
      use all of the docs to create a map of the features
        actions, inputs, effects
        from those 3, you can figure out the basic model of the system
          the model will have inconsistencies
    create developer account on service
      find account creation page
      create account
      create developer app or however you do it
    collect docs
      create mental model of docs
        figure out how docs are organized
        once you know organization, extract content
      extract potential experiments to try
        see example code snippets to copy
          find any context they assume
          collect them, to try running later
      before anything is accepted as true, make sure to experimentally verify it by creating and running a blackbox test
    find list of resources you can post to
      when no docs exist
        tinker and test common things
          but might get blacklisted
      when docs exist
        find docs
        parse docs
        build model of api calls and arguments
        result in model of api
    verify model is correct, or run experiments on model
      make randomly generated api calls using the model
    result in a map of what you can do with the api, and all of the ways the api can be used.
      set of actions
      set of inputs
      set of examples for each action
        a description for each example
    when any of these sources changes
      rebuild the model using the new information
      compare it to the previous model
        try running all of the examples from the previous model
          outline anything that has changed
      result in a new model for that specific version
    figure out how to create the simplest hello world example

  process understand source code api
    find project source code
    build source code
    parse source code
    use model of parsed source code to run experiments against build

  source linux proxy
    http://unix.stackexchange.com/questions/233810/proxy-all-requests-linux
    http://superuser.com/questions/23180/whats-the-easiest-way-to-sniff-tcp-traffic-data-on-linux
