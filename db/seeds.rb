# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
UserType.create(:name => 'admin', :description => 'Admin of the App')
UserType.create(:name => 'manager', :description => 'Manager for projects')
UserType.create(:name => 'user', :description => 'User of the App')
User.create(:nickname => 'admin', :email => 'admin@admin.com', :password => 'adminadmin', :usertype_id => UserType.find_by_name('admin').id)
User.create(:nickname => 'manager', :email => 'manager@manager.com', :password => 'manager', :usertype_id => UserType.find_by_name('manager').id)
Status.create(:name => 'New')
Status.create(:name => 'Finalized')
Priority.create(:name => 'HIGH')
Priority.create(:name => 'MEDUIM')
Priority.create(:name => 'LOW')
Appconfig.create(:description => 'STATUS_NEW', :value => Status.find_by_name('New').id)
Appconfig.create(:description => 'STATUS_FINALIZED', :value => Status.find_by_name('Finalized').id)
Appconfig.create(:description => 'ADMIN_USER', :value => UserType.find_by_name('admin').id)
Appconfig.create(:description => 'MANAGER_USER', :value => UserType.find_by_name('manager').id)