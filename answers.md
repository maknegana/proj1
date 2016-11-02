# Q0: Why is this error being thrown?
The Pokemon model does not exist in the database.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
In the index method/action of the home controller, `Pokemon.where(trainer: nil)` returns the set of Pokemon who have no trainers. `trainerless_pokemon.sample` returns a random element from the set `trainterless_pokemon` and assigns it to the `@pokemon` variable. The associated index view then displays `@pokemon.name`. 
A common factor between all the possible Pokemon are that they all have no trainers.  
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It creates a button that calls the capture action with the id of `@pokemon` passed as params via a patch request to update the pokemon attribute value in the db.
# Question 3: What would you name your own Pokemon?
Pok
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed the `trainer_path` and it needs the `current_trainer`'s id.  
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
Applicaton.html.erb gets rendered which renders 'layouts/messages.' We iterate through each element in flash and display the messages for each. 
# Give us feedback on the project and decal below!
Perhaps having more useful resources linked on Piazza for those who want to learn more about concepts. Having more examples will help too.

# Extra credit: Link your Heroku deployed app
