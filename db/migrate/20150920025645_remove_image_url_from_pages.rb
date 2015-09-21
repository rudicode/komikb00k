class RemoveImageUrlFromPages < ActiveRecord::Migration
  def change
    remove_column :pages, :image_url, :string
  end
end
