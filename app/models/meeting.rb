class Meeting < ActiveRecord::Base
	validates :title, :presence => true, :length => { :maximum => 10 }
	has_many :tasks
end
