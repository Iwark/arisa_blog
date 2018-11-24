class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :post_type
      t.string :weather
      t.date :day
      t.string :image
      t.boolean :open

      t.timestamps
    end
  end
end
