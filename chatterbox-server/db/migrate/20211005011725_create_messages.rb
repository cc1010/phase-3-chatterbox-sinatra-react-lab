class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :body
      t.text :username
      t.timestamp :created_at 
      t.timestamp :updated_at 
    end
  end
end
