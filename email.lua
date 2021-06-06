email = {}

function email.validate(input)
    is_valid = string.find(input, "@")
    if is_valid == nil then
        return "E-mail invalido!"
    else
        print("E-mail valido!")
    end
end

return email