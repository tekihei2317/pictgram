class ChangeIdDataToComments < ActiveRecord::Migration[5.2]
  def change
    change_column :comments, :user_id, :integer
    change_column :comments, :topic_id, :integer
  end
end
