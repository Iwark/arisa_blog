class CreateAngryPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :angry_posts do |t|
      t.references :post, foreign_key: true
      t.text :why
      t.text :whom
      t.text :how

      t.timestamps
    end
  end
end
