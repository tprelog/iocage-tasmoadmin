### TasmoAdmin plugin for FreeNAS 11 using *nginx* and *php72*

- This branch is for FreeNAS 11.2

**Download plugin and install**

    wget -O /tmp/tasmoadmin.json https://raw.githubusercontent.com/tprelog/iocage-tasmoadmin/11.2-RELEASE/tasmoadmin.json
    sudo iocage fetch -P dhcp=on vnet=on bpf=yes -n /tmp/tasmoadmin.json --branch '11.2-RELEASE'

 - You should now be able to use TasmoAdmin by entering `http://YOUR.TASMOADMIN.IP.ADDRESS` in your browser

---

###### Reset the TasmoAdmin login

    sudo iocage exec tasmoadmin tasmo-pwreset

###### To see a list of jails as well as their ip address

    sudo iocage list -l
    +-----+---------------+------+-------+----------+------------------+-----------------------+-----+----------+
    | JID |     NAME      | BOOT | STATE |   TYPE   |     RELEASE      |          IP4          | IP6 | TEMPLATE |
    +=====+===============+======+=======+==========+==================+=======================+=====+==========+
    |  1  | tasmoadmin    | on   | up    | pluginv2 | 11.2-RELEASE-p15 | epair0b|192.168.1.99  | -   | -        |
    +-----+---------------+------+-------+----------+------------------+-----------------------+-----+----------+

- Last tested on FreeNAS-11.2-U7
- More information about [iocage plugins](https://doc.freenas.org/11.2/plugins.html) and [iocage jails](https://doc.freenas.org/11.2/jails.html) can be found in the [FreeNAS guide](https://doc.freenas.org/11.2/intro.html#introduction)
