class CreateUserTable < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :first
      t.string :last
      t.string :email
      t.timestamps
    end
  end
end
