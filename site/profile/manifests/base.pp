class profile::base {

  #the base profile should include component modules that will be on all nodes

  class { '::ntp':
    servers => [ '3.es.pool.ntp.org' ],
  }

  class { 'network':
    config_file_notify => '',
  }

  network::mroute { 'enp0s3':
    routes => {
      '192.168.2.0/24' => '192.168.2.1',
    }
  }

}
