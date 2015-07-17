class Lead < ActiveRecord::Base
	validates :name, :email, :devise, presence: true
end
