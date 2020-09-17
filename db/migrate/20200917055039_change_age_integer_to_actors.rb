class ChangeAgeIntegerToActors < ActiveRecord::Migration[6.0]
  def change
    change_column :actors, :age, "integer USING CAST(age AS integer)"
  end
end


# MY PREVIOUS ATTEMPT
# class ChangeAgeIntegerToActors < ActiveRecord::Migration[6.0]
#   def change
#     change_column :actors, :age, :integer
#   end
# end

# I am a bit confused about why my previous attempt (above) would not migrate because I referenced the cheatsheet and my movie-app (which I pasted in below) and yet it wont accept the integer in the change_column here. I do recognize that what I pasted below is an add_column so perhaps could respond differently. However, the cheatsheet has this exactly: "change_column :products, :quantity, :integer", yet it wont work for me here. I am hoping to discuss my difficulties at office hours tomorrow.

# FROM movies-app
# class AddInventoryToProducts < ActiveRecord::Migration[6.0]
#   def change
#     add_column :products, :inventory, :integer
#   end
# end