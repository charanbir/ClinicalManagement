class UserStudy < ActiveRecord::Base
  belongs_to :User
  belongs_to :Study
  


def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |product|
      csv << product.attributes.values_at(*column_names)
    end
  end
end



end