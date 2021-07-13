require 'yaml'
require 'date'

class User
  def user_name(user)
    puts "User's Full Name #{user[:first_name]} #{user[:last_name]}"
  end

  def user_list(user)
    puts user.values
  end

  def user_age(user)
    date = (Date.parse user[:date_of_birth])
    puts "Age of #{user[:first_name]} is #{Time.now.year - date.year}"
  end

  def role(user)
    if user[:role] == 'buyer'
      puts "Name #{(user[:first_name] + ' ' + user[:last_name])}"
      puts "Role is #{user[:role]}"
    else
      puts "Name #{(user[:first_name] + ' ' + user[:last_name])}"
      puts "Role #{user[:role]}"
    end
  end

  def find_name(user)
    puts 'Finding same name'
    user.each { |user| puts user.values if user.value?('alex') }
  end

  def user_details
    users = YAML.load_file('users_data.yaml')
    users.each do |data|
      user_name(data)
      user_list(data)
      user_age(data)
      role(data)
    end
    find_name(users)
  end
end

user = User.new
user.user_details