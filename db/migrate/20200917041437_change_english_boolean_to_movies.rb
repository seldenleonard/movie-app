class ChangeEnglishBooleanToMovies < ActiveRecord::Migration[6.0]
  def change
      change_column_default :movies, :english, true
  end
end

# I spent maybe an hour and a half trying to figure out this migration and I'm pretty sure it still doesnt work (i.e. is not a boolean). Everything I read online either included "up" and "down" methods, which we havent covered (though I tried to read about and understand them), or the syntax that was shown did not work when I attempted to duplicate it with my data. This was the only version that did not return an error when I attempted to db:migrate.