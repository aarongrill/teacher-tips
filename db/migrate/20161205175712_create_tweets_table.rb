class CreateTweetsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.string :status
      t.string :username
      t.timestamps
    end 
  end
end
