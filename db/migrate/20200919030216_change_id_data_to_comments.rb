class ChangeIdDataToComments < ActiveRecord::Migration[5.2]
  def up
    if Rails.env.development? || Rails.env.test?
      change_column :comments, :user_id, :integer
      change_column :comments, :topic_id, :integer
    elsif Rails.env.production?
      change_column :comments, :user_id, :'integer USING user_id::integer'
      change_column :comments, :topic_id, :'integer USING user_id::integer'
    end
  end

  def down
    change_column :comments, :user_id, :string
    change_column :comments, :topic_id, :string
  end
end
