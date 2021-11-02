class sysadmins {

  group { 'sysadmins':
    ensure => present,
  }

  user { 'bob':
    ensure => present,
    uid    => 9999,
    groups => sysadmins,
  }

  user { 'shahin':
    ensure => present,
    uid    => 9998,
    groups => sysadmins,
  }

}
