class nessusagent::file {
  file {'/tmp/nessus.sh':
    ensure => 'file',
    source => 'puppet:///modules/nessusagent/nessus.sh',
    mode => '0777',
    owner => 'root'
  }
}
