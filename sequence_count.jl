# Program to count the number of A, C, T and G in a given sequence

function sequence_count(sequence::String)
    A=C=T=G=0
    for i in sequence
        if i=='A'
            A+=1
        elseif i=='T'
            T+=1
            elseif i=='G'
                G+=1
                elseif i=='C'
                    C+=1
                end
    
end
println(A," ",C," ",T," ",G)

end

print("Input a random sequence: "); text = readline()

sequence_count(text)





