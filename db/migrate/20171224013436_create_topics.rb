class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :title
      t.text :content
      t.integer :posts_count
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
