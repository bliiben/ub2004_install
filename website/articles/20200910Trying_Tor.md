# Trying tor

## What is tor

Please read about it on [torproject.org](https://torproject.org), it is a system
to stay anonymous on the web.

## Why I wanted to use it

After installing a new system, due to the installation of a new SSD in my
computer (which improved boot time quite a bit).

I thought I would try to setup some hidden service to be able to remote into my
laptop. This is done by proxying SSH through tor, and doesn't require to set
some dyn dns. I had seen a tor conferrence of someone who got his computer back
after it being stoleni because there was dyn dns setup on it.  It's a classic
[DEF CON 18 - Zoz - Pwned By The
Owner](https://www.youtube.com/watch?v=Jwpg-AwJ0Jc), which is worth your 20
minutes, simply glorious.

## How terribly hard is it to setup

Install tor through your package manager.  2 lines to un-comment in
`/etc/tor/torrc` around the HiddenService section, and run `sudo systemctl
restart tor.service`. You find your address in the hostname file where you setup
your service.

And then setup SSH, either the one liner : `ssh -o ProxyCommand='nc -x
localhost:9050 %h %p' something.onion`, or setup something in your
`~/.ssh/config` like

```
Host laptop

  Hostname something.onion
  
  ProxyCommand /usr/bin/nc -x localhost:9050 %h %p
```

I want to see now if I can setup irc, and mail and everything through tor. It's
so easy I couldn't believe.

## This site

So yes obviously I've setup this website on tor !

[http://ulduvn2a3g4fsll7kkt4l6kmxk4nnjnngmvjit5xbsimf4y4kjdbi5yd.onion](http://ulduvn2a3g4fsll7kkt4l6kmxk4nnjnngmvjit5xbsimf4y4kjdbi5yd.onion)

Obviously you need tor to access it, you should probably use [tor
browser](https://www.torproject.org/download/) or even better [tails](https://tails.boum.org/). Else with `torify curl $addr`.

(P.S. : I am not good at keeping things alive, so this service may not be up
forever)
