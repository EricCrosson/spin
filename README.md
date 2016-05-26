Promela / Spin
==============
![Available via dockerhub][dockerbadge]
[![](https://imagelayers.io/badge/hamroctopus/spin:latest.svg)](https://imagelayers.io/?images=hamroctopus/spin:latest 'Get your own badge on imagelayers.io')

This container provides a [docker] environment for [Promela] language files using
the [Spin verification tool].

The following packages are included

-   make 3.8.1
-   cmake 3.0.2
-   bison 3.0.2
-   gcc 4.8.4
-   g++ 4.8.4
-   [spin 6.4.5]

This container uses admiringworm/ubuntu as a base.

  [Spin verification tool]: http://spinroot.com/spin/whatispin.html
  [Promela]: https://en.m.wikipedia.org/wiki/Promela
  [spin 6.4.5]: http://spinroot.com/spin/Man/README.html
  [docker]: https://www.docker.com/
  [admiringworm/ubuntu]: https://hub.docker.com/r/admiringworm/ubuntu/
  [dockerbadge]: http://dockeri.co/image/hamroctopus/spin
