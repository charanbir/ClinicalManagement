class SiteStudy < ActiveRecord::Base
  belongs_to :Site
  belongs_to :Study
end
