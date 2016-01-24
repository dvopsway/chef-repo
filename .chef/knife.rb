# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "padmakar"
client_key               "#{current_dir}/padmakar.pem"
validation_client_name   "eagle-validator"
validation_key           "#{current_dir}/eagle-validator.pem"
chef_server_url          "https://chef.myeagle/organizations/eagle"
cookbook_path            ["#{current_dir}/../cookbooks"]
