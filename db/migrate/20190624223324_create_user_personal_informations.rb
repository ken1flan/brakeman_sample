class CreateUserPersonalInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :user_personal_informations do |t|
      t.string :real_name
      t.string :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
