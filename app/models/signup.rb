class Signup < ActiveRecord::Base
	validates_presence_of :email

	def change
		create_table :quotes do |t|

			t.string :email
		end
	end

end
