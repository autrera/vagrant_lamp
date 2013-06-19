# Name of the role should match the name of the file
name "server"

override_attributes(
  "mysql" => {
    "server_root_password" => 'iloverandompasswordsbutthiswilldo',
    "server_repl_password" => 'iloverandompasswordsbutthiswilldo',
    "server_debian_password" => 'iloverandompasswordsbutthiswilldo',
    "allow_remote_root" => true
  }
)

# Run list function we mentioned earlier
run_list(
  "recipe[apt]",
  "recipe[git]",
  "recipe[apache2]",
  "recipe[mysql]",
  "recipe[mysql::server]",
  "recipe[php]",
  "recipe[apache2::mod_php5]",
  "recipe[apache2::mod_expires]",
  "recipe[apache2::vhosts]",
  "recipe[php::module_mcrypt]",
  "recipe[php::module_mysql]"
)
