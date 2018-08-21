class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.text :comment_text
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :comments, :post_id
  end
end
