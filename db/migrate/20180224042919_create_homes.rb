class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.string :name
      t.string :email
      t.string :company
      t.string :telephone
      t.string :postnum
      t.string :address
      t.string :title
      t.text   :message

      t.timestamps
    end
  end
end
