default['ruby-ng']['ruby_version'] = "2.4"
default['nodejs']['version'] = "8.9.0"
default['nodejs']['npm']['version'] = "5.5.1"
default['nginx']['default_site_enabled'] = false

default[:enchant][:git_repository] = "https://github.com/TmNguyen12/Enchant"
default[:enchant][:git_revision] = "master"
default[:enchant][:path] = "/opt/enchant"

default[:enchant][:rails_env] = "production"
default[:enchant][:log_to_stdout] = "true"

default[:enchant][:environment] = {
  "SECRET_KEY_BASE": node[:enchant][:secret_key_base],
  "DATABASE_URL": node[:enchant][:database_url],
  "RAILS_ENV": node[:enchant][:rails_env],
  "RAILS_LOG_TO_STDOUT": node[:enchant][:log_to_stdout],
  "s3_access_key_id", node[:enchant][:s3_access_key_id],
  "s3_region": node[:enchant][:s3_region],
  "s3_bucket": node[:enchant][:s3_bucket],
  "s3_secret_access_key_id": node[:enchant][:s3_secret_access_key_id]
}

default[:enchant][:start_cmd] = "unicorn -E production -c /opt/unicorn.rb"

