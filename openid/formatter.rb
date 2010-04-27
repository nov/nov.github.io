require 'rubygems'
require 'yaml'
require 'active_support'

@openid_authentication_2_0 = YAML.load_file(File.dirname(__FILE__) + '/yaml/openid-authentication-2_0.yml').with_indifferent_access

def display(hash, indent = 0)
  hash.each do |key, value|
    puts "#{' ' * indent}=== #{key} ==="
    if value.is_a?(Hash)
      display(value, indent + 2)
    elsif value.is_a?(String)
      value.split("\n").each do |p|
        puts "#{' ' * indent}  #{p}"
      end
    end
  end
end

display @openid_authentication_2_0[:sections]