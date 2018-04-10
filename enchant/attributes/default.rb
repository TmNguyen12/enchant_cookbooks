default['ruby-ng']['ruby_version'] = "2.3.4"
default['nodejs']['version'] = "8.9.0"
default['nodejs']['npm']['version'] = "5.5.1"
default['nginx']['default_site_enabled'] = false

default[:enchant][:git_repository] = "https://github.com/tmnguyen12/enchant/"
default[:enchant][:git_revision] = "master"
default[:enchant][:path] = "/opt/enchant"

default[:enchant][:rails_env] = "production"
default[:enchant][:log_to_stdout] = "true"

default[:enchant][:environment] = {
  "SECRET_KEY_BASE": node[:enchant][:secret_key_base],
  "DATABASE_URL": node[:enchant][:database_url],
  "RAILS_ENV": node[:enchant][:rails_env],
  "RAILS_LOG_TO_STDOUT": node[:enchant][:log_to_stdout]
}

default[:enchant][:start_cmd] = "unicorn -E production -c /opt/unicorn.rb"