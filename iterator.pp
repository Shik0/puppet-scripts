
$users = ['kate', 'tom', 'harry', 'vivien', 'fred' ]

$users.each | String $user | {
  user { $user:
    ensure     => present,
    managehome => true,
  }

  file { "/home/${user}/.bashrc":
    ensure  => file,
    owner   => $user,
    group   => $user,
    content => 'export PATH=$PATH:/opt/puppetlabs/puppet/bin',
  }
}

