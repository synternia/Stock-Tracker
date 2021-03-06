class DropPrimaryKeyInOffersAndAddCompanyNameToTeams < ActiveRecord::Migration
  def change
    create_table :offers, id: false, force: true do |t|
      t.integer  :shares
      t.date     :cliff_date
      t.datetime :offer_date
      t.datetime :created_at
      t.datetime :updated_at
      t.boolean  :signed
      t.datetime :date_signed
      t.integer  :student_id
      t.integer  :team_id
      t.boolean  :answered,   default: false
    end
    execute "ALTER TABLE offers ADD PRIMARY KEY (shares, offer_date, student_id, team_id);"
    add_column :teams, :company_name, :string
  end
end
