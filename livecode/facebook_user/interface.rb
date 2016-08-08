require_relative 'facebook_user'
require 'date'
user1 = FacebookUser.new('joe.marc3@gmail.com', 'hello')
user2 = FacebookUser.new('boris@lewagon.org', 'boris')

user1.add_friend!(user2)

# p user1
# p user2

user1.birthday = Date.new(1995, 6, 7)

p user1.age

user1.change_password!('edward', 'boris')
user1.change_password!('hello', 'boris')

p user1
