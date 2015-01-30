class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.text :work
      t.boolean :submitted, default: false
      t.references :assignment, index: true
      t.references :student, index: true

      t.timestamps
    end
  end
end
