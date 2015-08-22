class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :image_url
      t.string :caption
      t.references :book, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
