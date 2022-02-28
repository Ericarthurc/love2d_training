example = function ()
    print("Hello Mars!")
end

example()

function example()
    print("Hello World!")
end

example()

function sayNumber(num)
    print("I like the number " .. num)
end

sayNumber(5)

function giveMeFive()
    return 5
end

a = giveMeFive()
print(a)