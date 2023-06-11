class CreateBugs < ActiveRecord::Migration[7.0]
  def change
    create_table :bugs do |t|
      t.string :title
      t.string :description
      t.string :priority
      t.string :est_days
      t.string :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
