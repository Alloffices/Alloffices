class User < ActiveRecord::Base
  has_many :messages, foreign_key: :sender_id
  acts_as_voter
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, styles: { medium: "50x50#", thumb: "30x30#" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  after_create :send_notification
  has_many :projxes
  has_many :bscenes

  def send_notification
  	AdminMailer.new_user(self).deliver_now
  end

end
