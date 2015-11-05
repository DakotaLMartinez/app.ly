class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company_name
      t.string :role
      t.boolean :applied
      t.date :date_applied
      t.string :source
      t.string :logo

      t.timestamps null: false
    end
  end
end
