class Projx < ActiveRecord::Base
 	belongs_to :user
 	has_many :bscenes, dependent: :destroy
 	acts_as_votable
 	validates :title, :description, :location, :type_skill, :date, presence: true


 #  	validate :user_quota, :on => :create

	# private

	# def user_quota
	# 	if user.projxes.size >= 4
	# 		errors.add(:base, "Exceeds daily limit")
	# 	elsif user.projxes.size <= 10
	# 		errors.add(:base, "Exceeds weekly limit")
	# 	end
	# end

end
