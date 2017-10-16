class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.timestamps
    end

    create_table :comments do |t|
      t.references :post, foreign_key: true, null: false
      t.timestamps
    end
  end
end
