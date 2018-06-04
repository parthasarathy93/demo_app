class CreateTeamMates < ActiveRecord::Migration
  def change
    create_table :team_mates do |t|
      t.string :name
      t.string :email
      t.string :teamname

      t.timestamps
    end
  end
end
