Vital Signs
===========
A library for reporting vital system signs.

Description
-----------
Vitalsigns is a Ruby library to measure system's vital parameters. It can be used to perform the following checks:

 * df
 * hdparm
 * fio

The output is parsed and presented in an easy to consume Ruby hash.

Example usage
-------------

**Installation**

    # yum install fio hdparm
    # gem install vitalsigns

**Include it in your project**

    require 'vitalsigns'

**Free disk space**

    d = Vitalsigns::Df.new
    d.df '/boot'

    d.df (By default, it will give result for '/')

**Hard disk device speed**

    h = Vitalsigns::Hdparm.new
    h.hdparm '/dev/vda1'

**Hard disk device speed by directory**
    h = Vitalsigns::Hdparm.new
    h.hdparm (By default, it will return result for device where '/var' directory mounted)

** Find device by directory**
    Vitalsigns::DeviceLookup.default -> will return device for '/var'
    Vitalsigns::DeviceLookup.find_by_dir '/var'


**Test I/O using fio**

    f = Vitalsigns::Fio.new
    f.fio '/mnt/nfsmount'
    
Testing
-------

```
$rake test
```

Also see
--------
* https://linux.die.net/man/8/hdparm
* https://github.com/axboe/fio/blob/master/HOWTO
