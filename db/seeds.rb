# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.new(email: 'admin@theblogapp.com', password: 'password1')
admin.avatar = File.open(Rails.root.join('public/images', 'tux.png'))
admin.add_role :admin
admin.skip_confirmation!
admin.save!

user = User.new(email: 'user@theblogapp.com', password: 'password2')
user.avatar = File.open(Rails.root.join('public/images', 'default.png'))
user.add_role :user
user.skip_confirmation!
user.save!