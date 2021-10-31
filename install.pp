exec { 'make a dir':
  path    => '/home/vagrant:/usr/bin:/bin',
  command => 'makedir.sh',
  creates => '/home/vagrant/myapp',
}
