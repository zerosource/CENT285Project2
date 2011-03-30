# app/models/user.rb
#
# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  first_name :text
#  last_name  :text
#  email      :text
#  username   :text            unique
#  password   :text
#  enc_pass   :text
#  salt       :text
#  dep        :text
#  div        :text
#


class User < ActiveRecord::Base
  attr_accessible :first_name,:last_name,:email,:username,:dep,:div
end
