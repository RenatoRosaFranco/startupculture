class CreateNewsletters < ActiveRecord::Migration[5.2]
  def change
    create_table :newsletters do |t|
      t.string :name
      t.string :email
      t.integer :status
      t.string :token
      t.date :signin_date

      t.timestamps
    end
  end
end
