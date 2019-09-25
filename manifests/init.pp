class apache {
  include apache::download
  include apache::compile
  Class['apache::download'] -> Class['apache::compile']
}
