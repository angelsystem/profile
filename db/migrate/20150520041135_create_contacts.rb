class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :email, null: false
      t.string :name, null: false
      t.text :message, null: false

      t.timestamps null: false
    end
  end
end
