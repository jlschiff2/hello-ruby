# Run the code in this file by typing:
# ruby 4.rb
# into your command-line interface.

my_profile = {
    name: "Jenn", 
    location: {
        city: "Chicago", 
        state: "Illinois"
    },
    timeline: ["Work!", "Eating crackers!", "Learning Ruby!"]
}
# my_profile = {:name=>"Jenn", :location=>"Chicago"} the hash rocket way
puts my_profile [:name]
puts my_profile [:location][:city]
puts my_profile [:timeline][0]