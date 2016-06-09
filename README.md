Promela / Spin
==============

[![](https://imagelayers.io/badge/hamroctopus/spin:latest.svg)](https://imagelayers.io/?images=hamroctopus/spin:latest)
[![](https://img.shields.io/badge/docker-ready-blue.svg)](https://hub.docker.com/r/hamroctopus/spin/)
[![](https://img.shields.io/docker/pulls/hamroctopus/spin.svg?maxAge=2592000)](https://hub.docker.com/r/hamroctopus/spin/)
[![](https://img.shields.io/docker/stars/hamroctopus/spin.svg?maxAge=2592000)](https://hub.docker.com/r/hamroctopus/spin/)

This container provides a [docker] environment for [Promela] language files using
the [Spin verification tool].

Provenance
----------

This container uses [admiringworm/ubuntu] as a base.

Contents
--------

The image contains the following packages

-   make 3.8.1
-   cmake 3.0.2
-   bison 3.0.2
-   gcc 4.8.4
-   g++ 4.8.4
-   [spin 6.4.5]

Use
---

There are two use cases for this docker container, autopilot and manual
control. Both require mounting your directory with promela sources as
`/data` in the container.

### Autopilot

Invoking this container without arguments will run the standard cmake
build routine, i.e.

``` bash
docker run -v $(pwd):/data hamroctopus/spin
```

will tell the container to mount the current directory and execute the
following

``` bash
mkdir build
cd build
cmake ..
make
```

### Manual

If your build pattern deviates from the above, pass your custom
instructions as arguments

``` bash
docker run -v $(pwd):/data hamroctopus/spin step1 && step2 && step3
```

  [Spin verification tool]: http://spinroot.com/spin/whatispin.html
  [Promela]: https://en.m.wikipedia.org/wiki/Promela
  [spin 6.4.5]: http://spinroot.com/spin/Man/README.html
  [docker]: https://www.docker.com/
  [admiringworm/ubuntu]: https://hub.docker.com/r/admiringworm/ubuntu/
  [dockerbadge]: http://dockeri.co/image/hamroctopus/spin
