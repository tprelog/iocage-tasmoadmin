# iocage-tasmoadmin
Artifact file(s) for [TasmoAdmin][1] using *nginx* and *php72*

### This is a [FreeNAS Community Plugin][2]

**The current release is intended for FreeNAS 11.3 but should work with FreeNAS 11.2-U7 or later**

- This will create an 11.3-RELEASE iocage-jail for [TasmoAdmin][1]

#### Installation

**TasmoAdmin is available from the Community Plugins page on FreeNAS 11.3**

![img][FreeNAS_plugins]

---

**FreeNAS 11.2-U7**
<details><summary>Click Here</summary>
<p>

##### plugin-jail

*The 11.3-RELEASE should work on FreeNAS 11.2-U7 or later*

It is possible to install this plugin on FreeNAS 11.2-U7 using the console.

```bash
wget -O /tmp/tasmoadmin.json https://raw.githubusercontent.com/tprelog/freenas-plugin-index/11.3-RELEASE/tasmoadmin.json
iocage fetch -P dhcp=on vnet=on vnet_default_interface=auto bpf=yes boot=on -n /tmp/tasmoadmin.json --branch 11.3-RELEASE
```

</p>
</details>


---

##### Reset the TasmoAdmin login password
```bash
sudo iocage exec tasmoadmin tasmo-pwreset
```

---

###### Current artifact files can be found in the [11.3-RELEASE branch][4]

[FreeNAS_plugins]: _img/FreeNAS_tasmoadmin.png

[1]: https://tasmoadmin.org/
[2]: https://www.freenas.org/plugins/
[3]: https://github.com/tprelog/freenas-plugin-index
[4]: https://github.com/tprelog/iocage-tasmoadmin/tree/11.3-RELEASE
