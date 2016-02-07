name "production"
description "For Production!"

cookbook_versions({
  "apache" => "= 0.2.0",
  "chef-client" => "= 4.3.2",
  "logrotate" => "= 1.9.2",
  "cron" => "= 1.7.3",
  "chef_handler" =>  "1.2.0"
})

default_attributes(
  "chef_client" => {
    "interval" => 300
  }
)
