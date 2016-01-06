class UserController < ApplicationController
  has_many :articles
  has_many :comments
end
