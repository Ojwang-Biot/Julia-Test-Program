# Defining a module for the calculator

module Calculator

# Function to add two numbers

export add_two_numbers
function add_two_numbers(a, b)
    return a + b
end

# Function to subtract two numbers

export subtract_two_numbers
function subtract_two_numbers(a, b)
    return a - b
end

# Function to multiply two numbers

export multiply_two_numbers
function  multiply_two_numbers(a, b)
    return a * b
end

# Function to divide two numbers

export divide_two_numbers
function divide_two_numbers(a, b)
    if b == 0
        println("Error")
        return NaN
    end
    return a / b
end

# Function to calculate the GC content of a given DNA sequences
export calculate_gc_content
function calculate_gc_content(sequence)
    sequence = uppercase(sequence)
    gc_count = count(x -> in['G', 'C'], sequence)
    total_bases = length(sequence)
    return gc_count / total_bases
end
    
end

# Command-line input and execution
# ARGS - is an array of the command line arguments passed to julia as strings

using .Calculator

if length(ARGS) < 2
    println("Usage: julia calculator.jl operation arg1 arg2")
    println("Available operations: add, subtract, multiply, divide, gc_content")
    exit(1)
end

operation = ARGS[1]

if operation == "add"
    arg1 = parse(Float64, ARGS[2])
    arg2 = parse(Float64, ARGS[3])
    result = Calculator.add_two_numbers(arg1, arg2)
    println("Result is: $result")

    elseif operation == "subtract"
        arg1 = parse(Float64, ARGS[2])
        arg2 = parse(Float64, ARGS[3])
        result = Calculator.subtract_two_numbers(arg1, arg2)
        println("Result is: $result")

        else
            println("Invalid operation")
            exit(1)
        end

# Function to calculate gc content        
function calculate_gc_content(dna_sequence::String)
    # Making the function to only accept uppercase
    sequence = uppercase(sequence)
    # Making the function to count the number of G and C nucleotides
    gc_count = count(c -> c in ['G', 'C'], sequence)
    # Calculating gc content as a percentage
    gc_content = (gc_count / length(sequence)) * 100.0

    return gc_content
end

tensor = reshape(1:8, (2, 2, 2))
mat = [2 5; 6 8]
vec = [1,4,7]
vec_2d = [3 5 7 8]

for i in 1:15
    println(i)
end


fruits = "mango apples pears oranges avocado kiwi"
for j in fruits
    println(fruits)
end

x = 1:10
for i in x
    println("ATCGCCGTAATACGTAAGGCCTCATTGCAAAA")
end


n = 2
while n > 1
    println(n)
    global n += 1
end


c = "ATCGGTA"
c[end-1(6)]

x = 10
y = 30

if x > y
    println("Fizz")
    else
        println("Buzz")
    end


function  greet(name)
        println("hello julia")
    end

greet("julia")








