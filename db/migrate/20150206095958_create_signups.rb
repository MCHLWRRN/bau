class CreateSignups < ActiveRecord::Migration
	def change
		create_table :quotes do |t|

			t.string :email
		end
  end
end
