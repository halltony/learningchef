current_dir = File.dirname(__FILE__)
log_level                :info
ssl_verify_mode          :verify_none
log_location             STDOUT
node_name                "halltony"
client_key               "#{current_dir}/halltony.pem"
validation_client_name   "learningchef-validator"
validation_key           "#{current_dir}/learningchef-validator.pem"
chef_server_url          "https://server-centos65.com/\
organizations/learningchef"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]