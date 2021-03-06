# Default parameters for freeradius
class freeradius::params {

  # Name of FreeRADIUS package
  $fr_package = $::osfamily ? {
    'RedHat' => 'freeradius',
    'Debian' => 'freeradius',
    default  => 'freeradius',
  }

  # Name of wpa_supplicant package
  $fr_wpa_supplicant = $::osfamily ? {
    'RedHat' => 'wpa_supplicant',
    'Debian' => 'wpasupplicant',
    default  => 'wpa_supplicant',
  }

  # Name of FreeRADIUS service
  $fr_service = $::osfamily ? {
    'RedHat' => 'radiusd',
    'Debian' => 'freeradius',
    default  => 'radiusd',
  }

  # Whether the FreeRADIUS init.d startup script has a status setting or not
  $fr_service_has_status = $::osfamily ? {
    'RedHat' => true,
    'Debian' => false,
    default  => false,
  }

  # Default base path for FreeRADIUS configs
  $fr_basepath = $::osfamily ? {
    'RedHat' => '/etc/raddb',
    'Debian' => '/etc/freeradius',
    default  => '/etc/raddb',
  }

  # Path for FreeRADIUS logs
  $fr_logpath = $::osfamily ? {
    'RedHat' => '/var/log/radius',
    'Debian' => '/var/log/freeradius',
    default  => '/var/log/radius',
  }

  # FreeRADIUS user
  $fr_user = $::osfamily ? {
    'RedHat' => 'radiusd',
    'Debian' => 'freerad',
    default  => 'radiusd',
  }

  # FreeRADIUS group
  $fr_group = $::osfamily ? {
    'RedHat' => 'radiusd',
    'Debian' => 'freerad',
    default  => 'radiusd',
  }

  # Privileged winbind user
  $fr_wbpriv_user = $::osfamily ? {
    'RedHat' => 'wbpriv',
    'Debian' => 'winbindd_priv',
    default  => 'wbpriv',
  }
}
