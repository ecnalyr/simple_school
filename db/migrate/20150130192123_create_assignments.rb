class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.references :classroom, index: true

      t.timestamps
    end
  end
end
