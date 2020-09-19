class ChangeIdDataToFavorites < ActiveRecord::Migration[5.2]
  def up
    if Rails.env.development? || Rails.env.test?
      change_column :favorites, :user_id, :integer
      change_column :favorites, :topic_id, :integer
    elsif Rails.env.production?
      change_column :favorites, :user_id, :'integer USING user_id::integer'
      change_column :favorites, :topic_id, :'integer USING user_id::integer'
    end
  end

  def down
    change_column :favorites, :user_id, :string
    change_column :favorites, :topic_id, :string
  end
end
