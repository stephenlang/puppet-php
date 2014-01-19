# puppet-php

####Table of Contents

1. [Overview - What is the PHP module?](#overview)
2. [Module Description - What does the module do?](#module-description)
3. [Setup - The basics of getting started with PHP](#setup)
4. [Usage - The classes, defined types, and their parameters available for configuration](#usage)
5. [Limitations - OS compatibility, etc.](#limitations)

## Overview

The php module installs, configures, and manages PHP.

## Module Description

The php module handles installing and configuring PHP across a range of operating systems and distributions.

## Setup

### What PHP affects

* Installing php
* Installing php modules
* php.ini

### Basics

Getting started with this module is as simple as specifying the following in your manifest:

```puppet
class { 'php': }
```

If you would like to customize your php.ini a bit, here is a brief example using 2 parameters:

```pupppet
class { 'php': memory_limit => '256M', upload_max_filesize => '8M' }
```

## Usage

The following parameters are available in the php module:

engine
short_open_tag
asp_tags
precision
y2k_compliance
output_buffering
zlib_output_compression
implicit_flush
unserialize_callback_func
serialize_precision
allow_call_time_pass_reference
safe_mode
safe_mode_gid
safe_mode_include_dir
safe_mode_exec_dir
safe_mode_allowed_env_vars
safe_mode_protected_env_vars
disable_functions
disable_classes
expose_php
max_execution_time
max_input_time
memory_limit
error_reporting
display_errors
display_startup_errors
log_errors
log_errors_max_len
ignore_repeated_errors
ignore_repeated_source
report_memleaks
track_errors
html_errors
variables_order
request_order
register_globals
register_long_arrays
register_argc_argv
auto_globals_jit
post_max_size
magic_quotes_gpc
magic_quotes_runtime
magic_quotes_sybase
auto_prepend_file
auto_append_file
default_mimetype
doc_root
user_dir
enable_dl
file_uploads
upload_max_filesize
allow_url_fopen
allow_url_include
default_socket_timeout
define_syslog_variables
SMTP
smtp_port
sendmail_path
mail_add_x_header
sql_safe_mode
odbc_allow_persistent
odbc_check_persistent
odbc_max_persistent
odbc_max_links
odbc_defaultlrl
odbc_defaultbinmode
mysql_allow_persistent
mysql_max_persistent
mysql_max_links
mysql_default_port
mysql_default_socket
mysql_default_host
mysql_default_user
mysql_default_password
mysql_connect_timeout
mysql_trace_mode
mysqli_max_links
mysqli_default_port
mysqli_default_socket
mysqli_default_host
mysqli_default_user
mysqli_default_pw
mysqli_reconnect
pgsql_allow_persistent
pgsql_auto_reset_persistent
pgsql_max_persistent
pgsql_max_links
pgsql_ignore_notice
pgsql_log_notice
sybct_allow_persistent
sybct_max_persistent
sybct_max_links
sybct_min_server_severity
sybct_min_client_severity
bcmath_scale
session_save_handler
session_save_path
session_use_cookies
session_use_only_cookies
session_name
session_auto_start
session_cookie_lifetime
session_cookie_path
session_cookie_domain
session_cookie_httponly
session_serialize_handler
session_gc_probability
session_gc_divisor
session_gc_maxlifetime
session_bug_compat_42
session_bug_compat_warn
session_referer_check
session_entropy_length
session_entropy_file
session_cache_limiter
session_cache_expire
session_use_trans_sid
session_hash_function
session_hash_bits_per_character
url_rewriter_tags
mssql_allow_persistent
mssql_max_persistent
mssql_max_links
mssql_min_error_severity
mssql_min_message_severity
mssql_compatability_mode
mssql_secure_connection
tidy_clean_output
soap_wsdl_cache_enabled
soap_wsdl_cache_dir
soap_wsdl_cache_ttl

## Limitations

This module has been built and tested against Puppet 3.0 and higher.

The module has been tested on:

* RedHat Enterprise Linux 6
* CentOS 6
* Ubuntu 12.04

Testing on other platforms has been light and cannot be guaranteed.
