# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
u1 = User.create(:name => 'Callum', :email => 'callum@dougan.com', :password => 'password', :role => 'admin')
u2 = User.create(:name => 'Oscar', :email => 'oscar@brooks.com', :password => 'password', :role => 'admin')
u3 = User.create(:name => 'Billy', :email => 'billy@bawbags.com', :password => 'password')

Article.delete_all
a1 = Article.create(:name => 'Rails', :content => 'A bad framework for jerks.')
a2 = Article.create(:name => 'Python', :content => "HSSSSSSS\nSSSSSS")

Comment.delete_all
c1 = Comment.create(:content => 'lolbad', :user_id => u1.id, :article_id => a1.id)