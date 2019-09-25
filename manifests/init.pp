class apache {
  include apache::download
  include apache::compile
  include apache::service
  Class['apache::download'] -> Class['apache::compile'] 
}
