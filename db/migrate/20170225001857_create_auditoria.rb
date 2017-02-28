class CreateAuditoria < ActiveRecord::Migration
  def change
    create_table :auditoria do |t|
      t.string   :title
      t.integer  :capacity

      t.timestamps null: false
    end
  end
end
