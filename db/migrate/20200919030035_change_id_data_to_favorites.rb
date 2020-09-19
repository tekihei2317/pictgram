class ChangeIdDataToFavorites < ActiveRecord::Migration[5.2]
  def change
    change_column :favorites, :user_id, :integer
    change_column :favorites, :topic_id, :integer
  end
end
