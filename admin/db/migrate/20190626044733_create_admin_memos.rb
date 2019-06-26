class CreateAdminMemos < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_memos do |t|
      t.string :title
      t.text :body
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
