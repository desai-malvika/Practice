$LOAD_PATH << '.'
require 'yaml'
require 'Module.rb'
class User
  include UserData
  def user_details
    users = YAML.load_file('users_data.yaml')
    users.each { |users|
      user_name(users)
      user_list(users)
      user_age(users)
      role(users)
    }
    find_name(users)
  end
end

user = User.new
user.user_details
