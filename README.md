# Raspberry PI Seedbox

Quick'n'dirty instructions on setting up a [rapsberry pi](http://rapsberrypi.org) as a seedbox.

##  Install [Wheezy Raspbian](http://www.raspberrypi.org/downloads) to a 4GB SD card using USB SD adapter

1. Download [Wheezy Raspbian](http://www.raspberrypi.org/downloads)
1. Unmount the image if it was automatically mounted
```
    $ diskutil unmount /Volumes/WHEEZY
```
1. Use `dd` to write the image to the SD card (make sure you're writing to the write disk!)
```
    $ sudo dd if=2013-02-09-wheezy-raspbian.img of=/dev/rdisk3 bs=1m
```
## Once installed plug the PI into an HDMI monitor

1. Enable SSH 
1. Set Password
1. Overclock to Modest
1. Update raspi-config

## To install puppet on a fresh raspberry pi:

    $ ssh pi@pi
    $ curl https://raw.github.com/fromagie/puppet/master/install.sh | sh

## To update raspberry pi:

    $ ssh pi@pi
    $ /etc/puppet/update.sh
