class CreateHappyPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :happy_posts do |t|
      t.references :post, foreign_key: true
      t.text :play
      t.text :can
      t.text :want

      t.timestamps
    end
  end
end
