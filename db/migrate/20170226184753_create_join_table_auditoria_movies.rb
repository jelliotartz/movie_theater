class CreateJoinTableAuditoriaMovies < ActiveRecord::Migration
  def change
    create_join_table :auditoria, :movies do |t|
      t.index [:auditorium_id, :movie_id]
      t.index [:movie_id, :auditorium_id]
    end
  end
end
