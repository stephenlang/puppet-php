# params.pp

class php::params {

$engine                          = 'On'
$short_open_tag                  = 'On'
$asp_tags                        = 'Off'
$precision                       = '14'
$y2k_compliance                  = 'On'
$output_buffering                = '4096'
$zlib_output_compression         = 'Off'
$implicit_flush                  = 'Off'
$unserialize_callback_func       = undef
$serialize_precision             = '100'
$allow_call_time_pass_reference  = 'Off'
$safe_mode                       = 'Off'
$safe_mode_gid                   = 'Off'
$safe_mode_include_dir           = undef
$safe_mode_exec_dir              = undef
$safe_mode_allowed_env_vars      = 'PHP_'
$safe_mode_protected_env_vars    = 'LD_LIBRARY_PATH'
$disable_functions               = undef
$disable_classes                 = undef
$expose_php                      = 'On'
$max_execution_time              = '30'
$max_input_time                  = '60'
$memory_limit                    = '128M'
$error_reporting                 = 'E_ALL & ~E_DEPRECATED'
$display_errors                  = 'Off'
$display_startup_errors          = 'Off'
$log_errors                      = 'On'
$log_errors_max_len              = '1024'
$ignore_repeated_errors          = 'Off'
$ignore_repeated_source          = 'Off'
$report_memleaks                 = 'On'
$track_errors                    = 'Off'
$html_errors                     = 'Off'
$variables_order                 = 'GPCS'
$request_order                   = 'GP'
$register_globals                = 'Off'
$register_long_arrays            = 'Off'
$register_argc_argv              = 'Off'
$auto_globals_jit                = 'On'
$post_max_size                   = '8M'
$magic_quotes_gpc                = 'Off'
$magic_quotes_runtime            = 'Off'
$magic_quotes_sybase             = 'Off'
$auto_prepend_file               = undef
$auto_append_file                = undef
$default_mimetype                = 'text/html'
$doc_root                        = undef
$user_dir                        = undef
$enable_dl                       = 'Off'
$file_uploads                    = 'On'
$upload_max_filesize             = '2M'
$allow_url_fopen                 = 'On'
$allow_url_include               = 'Off'
$default_socket_timeout          = '60'
$define_syslog_variables         = 'Off'
$SMTP                            = 'localhost'
$smtp_port                       = '25'
$sendmail_path                   = '/usr/sbin/sendmail -t -i'
$mail_add_x_header               = 'On'
$sql_safe_mode                   = 'Off'
$odbc_allow_persistent           = 'On'
$odbc_check_persistent           = 'On'
$odbc_max_persistent             = '-1'
$odbc_max_links                  = '-1'
$odbc_defaultlrl                 = '4096'
$odbc_defaultbinmode             = '1'
$mysql_allow_persistent          = 'On'
$mysql_max_persistent            = '-1'
$mysql_max_links                 = '-1'
$mysql_default_port              = undef
$mysql_default_socket            = undef
$mysql_default_host              = undef
$mysql_default_user              = undef
$mysql_default_password          = undef
$mysql_connect_timeout           = '60'
$mysql_trace_mode                = 'Off'
$mysqli_max_links                = '-1'
$mysqli_default_port             = '3306'
$mysqli_default_socket           = undef
$mysqli_default_host             = undef
$mysqli_default_user             = undef
$mysqli_default_pw               = undef
$mysqli_reconnect                = 'Off'
$pgsql_allow_persistent          = 'On'
$pgsql_auto_reset_persistent     = 'Off'
$pgsql_max_persistent            = '-1'
$pgsql_max_links                 = '-1'
$pgsql_ignore_notice             = '0'
$pgsql_log_notice                = '0'
$sybct_allow_persistent          = 'On'
$sybct_max_persistent            = '-1'
$sybct_max_links                 = '-1'
$sybct_min_server_severity       = '10'
$sybct_min_client_severity       = '10'
$bcmath_scale                    = '0'
$session_save_handler            = 'files'
$session_save_path               = '/var/lib/php/session'
$session_use_cookies             = '1'
$session_use_only_cookies        = '1'
$session_name                    = 'PHPSESSID'
$session_auto_start              = '0'
$session_cookie_lifetime         = '0'
$session_cookie_path             = '/'
$session_cookie_domain           = undef
$session_cookie_httponly         = undef
$session_serialize_handler       = 'php'
$session_gc_probability          = '1'
$session_gc_divisor              = '1000'
$session_gc_maxlifetime          = '1440'
$session_bug_compat_42           = 'Off'
$session_bug_compat_warn         = 'Off'
$session_referer_check           = undef
$session_entropy_length          = '0'
$session_entropy_file            = undef
$session_cache_limiter           = 'nocache'
$session_cache_expire            = '180'
$session_use_trans_sid           = '0'
$session_hash_function           = '0'
$session_hash_bits_per_character = '5'
$url_rewriter_tags               = 'a=href,area=href,frame=src,input=src,form=fakeentry'
$mssql_allow_persistent          = 'On'
$mssql_max_persistent            = '-1'
$mssql_max_links                 = '-1'
$mssql_min_error_severity        = '10'
$mssql_min_message_severity      = '10'
$mssql_compatability_mode        = 'Off'
$mssql_secure_connection         = 'Off'
$tidy_clean_output               = 'Off'
$soap_wsdl_cache_enabled         = '1'
$soap_wsdl_cache_dir             = '/tmp'
$soap_wsdl_cache_ttl             = '86400'

  case $osfamily {
    'RedHat': {
      $package_list = ['php-common', 'php-gd', 'php-pecl-apc', 'php-devel', 'php-cli', 'php',
        'php-pear', 'php-xml', 'php-mysql', 'php-mbstring', 'php-soap']
      $service_name = 'httpd'
      $php_ini      = '/etc/php.ini'
    }
    'Debian': {
      $files = [ '/etc/php5/apache2/php.ini', '/etc/php5/cli/php.ini' ]
      $package_list = ['php5-common', 'php5-gd', 'php-apc', 'php5-dev', 'php5-cli', 'php5',
        'php-pear', 'php-xml-parser', 'php-gettext', 'php5-mcrypt', 'php5-mysql', 'php-soap']
      $service_name = 'apache2'
      $php_ini      = $files
    }
    default: {
      fail("Unsupported osfamily: ${::osfamily} operatingsystem: ${::operatingsystem}, module ${module_name} only supports osfamily: RedHat and Debian")
    }
  }
}
