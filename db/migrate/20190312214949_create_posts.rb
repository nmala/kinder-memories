class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :type
      t.string :title
      t.text :description
      t.text :letter
      t.references :timeline, foreign_key: true
      t.string :poster

      t.timestamps
    end
  end
end
