class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.belongs_to :post
      t.string :author
      t.string :title
      t.string :body
      t.datetime :published_at

      t.timestamps
    end
  end
end
