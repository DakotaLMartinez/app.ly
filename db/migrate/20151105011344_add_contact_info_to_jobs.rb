class AddContactInfoToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :contact_name, :string
    add_column :jobs, :contact_email, :string
    add_column :jobs, :contact_phone, :string
  end
end
