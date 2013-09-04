class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :email
      t.string :password
      t.string :password_digest
      t.string :nickname
      t.timestamps
    end
  end
end
