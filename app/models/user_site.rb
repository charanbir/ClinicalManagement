class UserSite < ActiveRecord::Base
  belongs_to :User
  belongs_to :Site
end