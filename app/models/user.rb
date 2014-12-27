class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable


  extend FriendlyId
  friendly_id :slug_candidates

  has_many :photos

  def slug_candidates
    # if there's a username clash, use the full email
    [:username, :email]
  end

  def username
    email.split("@").first
  end



end
