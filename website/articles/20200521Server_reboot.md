# The great server reset

## Introduction

After 7 years of using a small VPS. The hosting power that be decided to put the
server in the bin. Instead of migrating 7 years of junk, I've decided to take
what I've learned and make something better.

But as new year resolutions, they do not last long. So here are the system I'll
put in place to ensure that this space stays clean, and software dependencies
don't become an issue.

First, the first question I need to ask myself is what do I do with this server.
Hosting some web content, VPNing through, and running application that require a
high bandwith like crawling servers. I also use it for many random things, mitm
proxy and other experiments.

## Critical stuff

So for critical stuff, I've made a
[script](https://github.com/bliiben/ub2004_install) that can simply re-install
the server if needs be. This is where all the "critical" things will need to be
kept. This will re-install this website and other tools I always need on a
server :

  * Web server, nginx
  * VPN, sshuttle
  * dot files, I can't work without trusty vim

## Not so critical stuff

For not so critical stuff, I'll run docker images, this will ensure it does not
mess with my host system dependencies. And I'll have all my experiment dumping
files into my favorite `/tmp` folder.

> Wait! You should use Nix! So you'd not have dependencies problems.

Haha, I wish I could, but it's just to hungry in RAM, and I can't run it :(

## Why did I write this

This is to hold myself accountable in the future.
