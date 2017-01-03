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
    d.df
    
**Hard disk device speed***

    h = Vitalsigns::Hdparm.new
    h.hdparm '/dev/vda1'
    
**Test I/O using fio**

    f = Vitalsigns::Fio.new
    f.fio '/mnt/nfsmount'
    
Also see
--------
* https://linux.die.net/man/8/hdparm
* https://github.com/axboe/fio/blob/master/HOWTO