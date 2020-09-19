class ChangeIdDataToComments < ActiveRecord::Migration[5.2]
  def up
    change_column :comments, :user_id, :'integer USING user_id::integer'
    change_column :comments, :topic_id, :'integer USING user_id::integer'
  end

  def down
    change_column :comments, :user_id, :string
    change_column :comments, :topic_id, :string
  end
end
