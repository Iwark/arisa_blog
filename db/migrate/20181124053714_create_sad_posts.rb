class CreateSadPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :sad_posts do |t|
      t.references :post, foreign_key: true
      t.text :whatsup
      t.text :wanted
      t.text :good

      t.timestamps
    end
  end
end
