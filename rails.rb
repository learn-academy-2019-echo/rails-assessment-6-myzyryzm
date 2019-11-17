# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code (e.g. "es", "de", "ru", "ja") as an argument and returns the appropriate version of "Hello, World" for the given language. The default should be English. Test your code with THREE method calls. Expected output for hello_world 'es': 'Hola Mundo', hello_world 'de': 'Hallo Welt'

def hello_you (code)
    if code == "es"
        return 'Hola Mundo'
    end
    if code == "de"
        return 'Hallo Welt'
    end
    return "Hello World"
end

p hello_you("es")
p hello_you("de")
p hello_you("en")

# 2a. Create a method called assign_grade that takes a number as an argument and returns the corresponding letter grade. Test your code with THREE method calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'

def what_is_my_grade(score)
    if(score < 0 || score > 100)
        return "Please enter a number between 0 and 100"
    end
    if(score > 90)
        return "A"
    end
    if(score > 80)
        return "B"
    end
    if(score > 70)
        return "C"
    end
    if(score > 60)
        return "D"
    end
    return "F"
end

p what_is_my_grade(95)
p what_is_my_grade(52)
p what_is_my_grade(-4)
# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. Copy and paste the original code below to add the exceptions.



# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - and returns the number and the pluralized form of the noun, if necessary. Test your code with THREE method calls. Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'

def pluralize (amount, item)
    if(amount === 1)
        return amount.to_s + " " + item
    end
    if(item.downcase == "goose")
        return amount.to_s + " geese"
    end
    if(item.downcase == "child")
        return amount.to_s + " children"
    end
    if(item.downcase == "sheep")
        return amount.to_s + " sheep"
    end
    return amount.to_s + " " + item + "s"
end
p pluralize(1, "cat")
p pluralize(2, "dog")
p pluralize(3, "goose")
# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people, crossroads, pants and add the exceptions to your code. Copy and paste the original code below to add the exceptions.
