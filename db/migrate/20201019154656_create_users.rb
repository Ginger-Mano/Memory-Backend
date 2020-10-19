class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.integer :score
      t.integer :games_won
      t.integer :games_lost
      t.string :time_spent
      t.integer :avg_score
      t.string :image

      t.timestamps
    end
  end
end
