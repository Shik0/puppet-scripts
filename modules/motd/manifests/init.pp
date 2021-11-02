class motd {

  $params = {
    "os_name"     => $::facts['os']['name'],
    "os_major"    => $::facts['os']['release']['major'],
    "os_minor"    => $::facts['os']['release']['minor'],
    "server_name" => $::trusted['certname'],
  }

  file { '/etc/motd':
    ensure  => file,
    content => epp('motd/motd.epp', $params),
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }
}
