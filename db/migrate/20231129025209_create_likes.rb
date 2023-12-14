class CreateLikes < ActiveRecord::Migration[7.1]
  def change
    create_table :likes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true

      # make a unique index for each like for the user's post
      t.index [:user_id, :post_id], unique: true

      t.timestamps
    end
  end
end