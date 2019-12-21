### TasmoAdmin plugin for FreeNAS 11 using *nginx* and *php72*

- This branch is for FreeNAS 11.3

**Download plugin and install**

    wget -O /tmp/tasmoadmin.json https://raw.githubusercontent.com/tprelog/iocage-tasmoadmin/11.3-RELEASE/tasmoadmin.json
    sudo iocage fetch -P /tmp/tasmoadmin.json --branch '11.3-RELEASE'

 - You should now be able to use TasmoAdmin by entering `http://YOUR.TASMOADMIN.IP.ADDRESS` in your browser
 
##### Reset the TasmoAdmin login

    sudo iocage exec tasmoadmin tasmo-pwreset

##### To see a list of jails as well as their ip address

    sudo iocage list -l
    +-----+--------------+------+-------+----------+-----------------+---------------------+-----+----------+
    | JID |     NAME     | BOOT | STATE |   TYPE   |     RELEASE     |         IP4         | IP6 | TEMPLATE |
    +=====+==============+======+=======+==========+=================+=====================+=====+==========+
    |  1  |  tasmoadmin  |  on  |  up   | pluginv2 | 11.3-RELEASE-p5 | epair0b|192.0.1.76  |  -  |    -     |
    +-----+--------------+------+-------+----------+-----------------+---------------------+-----+----------+

- Last tested on FreeNAS-11.3-RC1  
- More information about [iocage plugins](https://doc.freenas.org/11.3/plugins.html) and [iocage jails](https://doc.freenas.org/11.3/jails.html) can be found in the [FreeNAS guide](https://doc.freenas.org/11.3/intro.html#introduction)
