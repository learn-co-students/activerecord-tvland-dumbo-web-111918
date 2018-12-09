class CreateActors < ActiveRecord::Migration[5.1]
  def change
  	create_table :actors do |t|
      #primary key of :i
      t.string :first_name
      t.string :last_name
    end
  end
end
