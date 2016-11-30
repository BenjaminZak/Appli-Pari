class User < ApplicationRecord
  has_many :paris
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def points
  	score = 0
  	self.paris.each do |p|
  		if p.choice == p.match.score
  			score +=1
  		end
  	end
  	return score
  end
end
