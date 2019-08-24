class nessusagent::add_agent {
  exec { 'Register the agent':
    path => '$::path',
    command => 'bash /tmp/nessus.sh',
    #Todo -- Determine the Value for Creates parameter. The Below dir is just an example
    creates => '/opt/nessus_agent'
   }
}
    
