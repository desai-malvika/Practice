require 'yaml'
require 'date'

module UserData
  def user_name(buyer_name)
    buyer_name.each do |user_name|
      puts "User's Full Name #{user_name[:first_name]} #{user_name[:last_name]}"
    end
  end

  def user_list(user_list)
    user_list.each do |list|
      puts list.values
      puts '===='
    end
  end

  def user_age(age)
    age.each do |age|
      date = Date.parse age[:date_of_birth]
      puts "Age of #{age[:first_name]} is #{Time.now.year - date.year}"
    end
  end

  def role_buyer(user_detail)
    puts 'List of Buyers'
    user_detail.each do |details|
      if details[:role] == 'buyer'
        puts details.values
        puts '===='
      end
    end
  end

  def role_seller(user_detail)
    puts 'List of Sellers'
    user_detail.each do |details|
      if details[:role] == 'seller'
        puts details.values
        puts '===='
      end
    end
  end

  def find_name(user)
    puts 'Finding same name'
    user.each do |user|
      puts user.values if user.value?('alex')
    end
  end
end

class User
  include UserData

  def user_details
    users = YAML.load_file('users_data.yaml')
    user_name(users)
    user_list(users)
    puts '---------------------------'
    user_age(users)
    puts '---------------------------'
    role_buyer(users)
    puts '---------------------------'
    role_seller(users)
    find_name(users)
  end
end

user = User.new
user.user_details
