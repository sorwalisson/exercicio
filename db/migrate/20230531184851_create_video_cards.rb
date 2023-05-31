class CreateVideoCards < ActiveRecord::Migration[7.0]
  def change
    create_table :video_cards do |t|
      t.string :name
      t.string :manufacturer
      t.string :memory
      t.float :price
      t.integer :stock

      t.timestamps
    end
  end
end
