#this is a comment, we use hashtag in julia to denote comment
#assigning variables and printing out using string interpolation

a = "My name is"
b = "John Paul Ojwang"
println("$a $b")

# String operations in julia. 
# Use * and ^ to perform string operations
# * operator - performs string concatenation i.e it joins the strings by linking them end-to-end
# for example

str_1 = "gene"
str_2 = "juggler"
println(str_1 * str_2)


# Assigning charaters

list_of_char = 'a', 'b', 'c', 'd'
println(list_of_char)
typeof(list_of_char)

# The ^ operator performs repetition. for example

repeat_my_name = "Ojwang " # leaving a space after the name will ensure that a space is left when repeating the name
println(repeat_my_name^3) #should repeat the name 3 times

# String interpolation

n = "name of ";
s = "school";
println("$n $s")

# Practicing with julia as a calculator
# The volume of a sphere with radius r is 4/3πr^3. What is the volume of a sphere with radius 5?

r = 5 #defining radius

volume = 4//3 * π * r^3 #calculating volume of sphere

println("The volume of the sphere is $volume") # printing the answer

# DATA STRUCTURES IN JULIA 
# They include Arrays, Tuples, Dictionaries, Sets etc

# 1. ARRAYS in julia

# Arrays are sequences of values

# Creating simple 1D arrays

arr = [20, 30, 40]
println(arr)

# Uninitialized arrays
# We can specify the type and dimension of an array by using the syntax below
# Array{type}(dims)

array = Array{Int64}(undef, 3)

# undef means that particular array has not been initialized to any known value hence will bring random values

# Creating an array with different types including constants

my_arr = [7, "joy", 6.2, π]
push!(my_arr,20)
println(my_arr)

# Creating an empty array
A = [28, 29, 30.7, "now"]
println(A)

 # Creating 2D arrays in Julia
 # To create a 2D array, don't include comma between elements

array_2d = [1 2 3 4 5 6 7 8 9 10]
println(array_2d)

array_2d[6]
println(array_2d)

 # To add another row, include a semicolon as shown below
array_2d = [1 2 3 4 5 ; 6 7 8 9 10]

# Creating arrays using range objects
# To do this, we use collect()fuction, for example

collect_numbers = collect(1:10)
println(collect_numbers)

#Three piece version for range of objects where you can specify a step size other than 1
# The syntax is, start:step:stop
# For example, I want a range of 0 to 50 in steps of 5, will bw written as

collect(0:5:50)

# We can also use ellipsis(...) after the last element instead of using collect() function

[0:10...]

# Range() function can also be used to create an array with range objects
# It goes from start value to end value by taking a specific step value
# An expample - go from 1 to 200 in 20 steps

my_array = range(1, length=20, stop=200)

# Creating arrays using comprehension
# Here each element can produce using a small computation

[n^2 for n in 1:10]

# Accessing contents of ARRAYS
# Write the name of the array with the element number in square brackets

my_arr[2]
arr[end]  # Finding the last element
arr[end-1]  # Finding the second last element

# Adding elements in array
# Use push!(), pushfirst!() and splice!() functions
# Adding element at the end

push!(arr, 60)  # exclamation (!) means the function is going to change the array
println(arr)

# Adding an element at the front of an array - Use pushfirst!()
pushfirst!(my_arr,3.5)
println(my_arr)

# Adding an element at a given index - Use splice()

splice!(my_arr,2:5,2:6) # Check later - Did not work
return my_arr

# Removing Elements fron array - Use pop!(), popfirst!() and splice!()

# Removing last element
pop!(arr)
return arr

# Removing first element
popfirst!(my_arr)
return my_arr

# Removing elements at a given position
splice!(A, 2)
return A

# 2. Dictionaries in Julia
# Dictionaries are more like arrays but are more general
# They represent a mapping from key to values

# An empty dictionary

my_genome = Dict()

# To add items to dictionary use []

my_genome["Homo sapiens"] = 3200.0
return my_genome

# Creating a dictionary

my_genome = Dict("Homo sapiens" => 3200.0, "Escherichia coli" => 4.6, "Arabidopsis thaliana" => 157.0)
println(my_genome)

my_genome["Saccharomyces cerevisiae"] = 2000
println(my_genome)
# Elements of dictionaries are not indexed with integer indices
# We use the keys to get the corresponding values

my_genome["Escherichia coli"]

# Searching for a key
# We use haskey() function to check whether the dict contains a key or not
# For example

haskey(my_genome, "Homo sapiens") # key present
haskey(my_genome, "Saccharomyces cerevisiae") # key not present

# Searching for key/value particular
# Use in() fuction to check whether a key/value pair or not

in(("Homo sapiens" => 3200.0), my_genome)  #insert "Homo sapiens" with the value 3200 into my_genome
in(("Escherichia coli" => 3200.0), my_genome)

# Deleting a key
# Use delete!() function to delete a key from an existing dict

delete!(my_genome, "Arabidopsis thaliana")
return my_genome

# Getting all keys
# Use keys() function

keys(my_genome)

# values
# Retrieving all values

values(my_genome)

# Dictionaries as iterable objects
# Each key/value pair, kv can be processed to see the dictionariesiterable objects
# Here we use for

for kv in my_genome
    println(kv)
end

# In the above, the kv is a tuple that contains each key/value pair.
