class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :user_id
      t.string :topic_id
      t.string :content

      t.timestamps
    end
  end
end