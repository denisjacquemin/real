class Admin::Agency < ActiveRecord::Base
  has_many :pages
  has_many :items  
end
