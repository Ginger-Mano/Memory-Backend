class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :term_name
      t.string :definition
      t.string :image
      t.integer :points
      t.string :image_front

      t.timestamps
    end
  end
end
