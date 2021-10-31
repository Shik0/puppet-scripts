
$username = 'shahin'

unless $username =~ String[4,8] {
 fail('Invalid username')
}

notify {"Hello ${username}":}

$hash = md5('hello world')

notify {"${hash}":}
