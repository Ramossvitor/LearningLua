-- Printing

print(1 + 2)
print("HELLO WORD")

-- Variables

color1 = 'red'
color_two = 'blue'
price = 1.723

-- Ler variaveis

print(color1)


-- Package
string.find("red", "r") -- ainda n sei pq serve

-- Tabelas
list = {
    color = red,
    value = 10
}

lista = {"a", "b", "c", "d"}
lista2 = {1, 2, 3, 4}

-- Tipos basicos na linguagem
empty = nil -- nil == VAZIO

valid = true -- true ou false são tipos booleanos, esses tipos só retornam essas duas coisas

value_int = 100 -- numerico // inteiro

value_float = 4.6 -- numerico // float, quebrado

content = "hello word" -- conteudo // string

-- Basic math with lua
-- + == adição
-- - == subtração
-- * == multiplicação
-- / == divisão
-- ^ == exponenciação // um numero sobre outro, exemplo: 10 ao quadrado == 10 elevado a 2

-- Pacotes
result_1 = math.abs(-7) -- calcula a diferença absoluta entre o numero e o 0
result_2 = math.ceil(3.2) -- arredonda numeros para cima
result_3 = math.floor(3.2) -- arredonda pra baixo
result_4 = math.fmod(5, 2) -- calcula o resto da divisão

-- condições
nota = 7

if nota >= 7 then
    print("APROVADO 1")
else
    print("REPROVADO 1")
end

if nota < 0 or nota > 10 then
    print("NOTA INVALIDA!")
elseif nota >= 7 then
    print("APROVADO 2")
elseif nota >= 0 and nota < 7 then
    print("REPROVADO 2")
end

-- for

for number = 1, 4 do
    print(number)
end

print("---------------------------------")

for number = 2, 10, 2 do
    print(number)
end

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

-- While

variavel_1 = 0

while variavel_1 < 10 do
    print(variavel_1)

    variavel_1 = variavel_1 + 1 -- isso fará cada vez que o sistema fizer um check no laço irá aumentar um, até essa variavel virar maior que 10
end

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

-- Outra forma de parar o loop

variavel_1 = 0
continue = true

while continue == true do
    print(variavel_1)

    variavel_1 = variavel_1 + 1
    if variavel_1 > 10 then
        continue = false
    end
end

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

-- Concatenação de textos
text_a = "Oi tudo bem?"
text_b = "Como ta?"

print(text_a .. " " .. text_b)

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

-- More packages
print(string.len("hello"))
print(string.sub("hello", 1, 3))

texto_1 = "TestaNdo"
print(string.upper(texto_1))
print(string.lower(texto_1))
capitalizando = string.sub(texto_1, 1, 1)
capitalizando_f = string.sub(texto_1, 2, #texto_1)
capitalizada = string.upper(capitalizando) .. string.lower(capitalizando_f)
print(capitalizada)
print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

print(string.rep("A", 592)) -- pode ser usado para margem também, exemplo a baixo
print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

margemtexto = string.rep(" ", 2)
print(margemtexto .. capitalizada)
print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

-- reveter texto
print(string.reverse("ABCD"))

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

-- procurando coisas dentro de textos
textfind = "ramossvitor@gmail.com"

print(string.find(textfind, "yahoo.com"))
print(string.find(textfind, "outlook.com"))
print(string.find(textfind, "gmail.com"))

findfrom, findto = string.find(textfind, "gmail.com")
print(string.sub(textfind, findfrom, findto))
print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
print(string.match(textfind, "gmail.com"))
print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
place_1 = string.find(textfind, "@")
if place_1 == nil then
    print("Email invalido!")
else
    provedor_1 = string.sub(textfind, place_1 + 1, #textfind)
    print("Provedor: " .. provedor_1)
end
print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
texto_2 = "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Temporibus maiores quaerat corporis asperiores nesciunt quasi dolor aliquam illo porro. Necessitatibus commodi blanditiis quia alias cupiditate doloribus ea itaque omnis at!"
result_5 = string.gsub(texto_2, "dolor", "ahdhj")
print(result_5)
print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
texto_3 = "Lorem, ipsum dolor dolor dolor consectetur adipisicing elit. Temporibus maiores quaerat corporis asperiores nesciunt quasi dolor aliquam illo porro. Necessitatibus commodi blanditiis quia alias cupiditate doloribus ea itaque omnis at!"
result_6 = string.gsub(texto_3, "dolor", "daqjsdja", 1)
print(result_6)
print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

-- Listas

lista_1 = {4, 6, 7, 9}
print(lista_1[3])

-- alterar valores da lista
lista_1[3] = 10
print(lista_1[3])

-- Adicionando valores na lista
lista_1[5] = 123
print(lista_1[5])

-- Inserindo sem escolher a posição
table.insert(lista_1, 71)
-- Ele irá colocar no proximo local disponivel da lista

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

numero_1 = 7

lista_2 = {4, 6, 8, numero_1, 12}
print(lista_2[4])

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

-- Representação de listas

for position in pairs(lista_1) do
    print(position .. ": " .. lista_1[position])
end

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
-- Map, Reduce, Filter
-- Map
cotacao_dolar = 5.22

prices = {100., 500., 250., 135.}

for position, value in pairs(prices) do
    print(position .. ": Em dolar: U$" .. value)
    print(position .. ": Em Reais: R$" .. value * cotacao_dolar)
    print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
end

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

-- Somando valores da lista
valores_1 = {30, 20, 10}

sum = 0

for _, value in pairs(valores_1) do
    print(sum)
    sum = sum + value
end

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

print("Somados os valores da lista chegamos ao: " .. sum)

-- Reduce, first e last

lista_3 = {10, 40, 30}

first = nil

last = nil

for _, value in pairs(lista_3) do
    last = value
    if first == nil then
        first = value
        break
    end
end
print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
print("1: " .. first)

for _, value in pairs(lista_3) do
    last = value
end
print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

print("3: " .. last)

-- Reduce, count e average
print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

lista_4 = {20, 13.32, 16.22, 13}

count = 0
sum_1 = 0

for _, value in pairs(lista_4) do
    count = count + 1
    sum_1 = sum_1 + value
end

media = sum_1 / count
print("Soma dos valores: " .. sum_1)
print("Quantidade de valores: " .. count)
print("Media de valores: " .. media)

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

-- Filter
lista_5 = {2, 6, 9, 15, 10, 21}
result_7 = {}

for _, value in pairs(lista_5) do
    if value >= 10 then
        table.insert(result_7, value)
    end
end

for _, value in pairs(result_7) do
    print("Os valores maiores que 10: " .. value)
end

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

-- Map, reduce, filter
dolar_1 = {10.75, 25, 100}

mapped = {}

for _, value in pairs(dolar_1) do
    table.insert(mapped, value * cotacao_dolar)
end

limit = 200.0

filtered = {}

for _, value in pairs(mapped) do
    if value <= limit then
        table.insert(filtered, value)
    end
end

sum_2 = 0

for _, value in pairs(filtered) do
    sum_2 = sum_2 + value
end

for ordem, value in pairs(filtered) do
    print("Compra " .. ordem .. ": " .. value)
end

print("O valor total da suas compras: " .. sum_2)

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

putlist = 4
lista_6 = {2, putlist, 4.5, "a", nil, true, false}

for ordem, value in pairs(lista_6) do
    print(ordem .. ": " .. tostring(value))
end

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

-- matriz

matrix = {
{"a", "b", "c"},
{"d", "e", "f"},
{"g", "h", "i"}}

print(matrix[3][2])

for index, line in pairs(matrix) do
    print("Linha " .. index .. ":")
    for _, coluna in pairs(line) do
        print(coluna)
    end
end

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

lista_7 = {
    a = 10,
    b = 20
}

print(lista_7["a"])

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

lista_8 = {
    ["color"] = "red"
}

for key, value in pairs(lista_8) do
    print(key .. " = " .. value)
end

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

products = {
    { name = "apPle", price = 2.48},
    { name = "oraNGe", price = 5.31}
}

for _, product in pairs(products) do
    capitalizandolen_1 = #product.name
    capitalizando_1 = string.sub(product.name, 1, 1)
    capitalizando_2 = string.sub(product.name, 2, capitalizandolen_1)
    capitalizada_1 = string.upper(capitalizando_1) .. string.lower(capitalizando_2)
    print(capitalizada_1 .. " R$" .. product.price)
end

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

-- Pacote table

lista_9 = {1, 2, 3}

table.insert(lista_9, 1, 4) -- insere aonde você quiser da lista, primeiro 

for _, value in pairs(lista_9) do
    print(value)
end

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

-- concat
lista_10 = {"A", "B", "C"}

result_8 = table.concat(lista_10, ":")

print(result_8)

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

-- Sort
lista_11 = {"C", "D", "B", "A"}

table.sort(lista_11)

for _, value in pairs(lista_11) do
    print(value)
end

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

-- Remove
lista_12 = {1, 2, 3, 4, 5, 6, 7}

table.remove(lista_12, 3) -- O VALOR PARA REMOVER É O NUMERO DA ORDEM DE ONDE ELE ESTÁ, E NÃO O QUE ELE É

for _, value in pairs(lista_12) do
    print(value)
end

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

-- Functions
function sum(a, b)
    result_9 = a + b

    return result_9
end

print(sum(2, 4))

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
-- Função para capitalizar
function capitalizante(word)
    first_letter = string.sub(word, 1, 1)
    outrasletras = string.sub(word, 2, #word)
    
    return (
        string.upper(first_letter) .. string.lower(outrasletras)
    )
end

print(capitalizante("AMaRelO"))

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

function minhafuncao(param)
    return param
end

print(minhafuncao)

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

function validate(value)
    if value < 10 then
        error('Menor que 10')
    end
end

validate(11)

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
print("CLI")
-- CLI
-- Command Line Interface
for index, value in pairs(arg) do
    print(index, value)
end
-- É possivel colocar args ao executar o lua, basta dar um espaço e colocar, neste caso vou colocar verde e amarelo e vai aparecer os dois na tela

print(arg[1])
print(arg[2]) -- se não colocar nada na hora de executar, irá aparecer nil
print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
-- lua source.lua COMMAND 10 20

comando_1 = arg[1]
index_1 = arg[2]
index_2 = arg[3]

--if comando_1 == "soma" then
--    if index_1 == nil and index_2 == nil then
--        print("Coloque numeros!")
--    else
--        print(index_1 + index_2)
--    end
--elseif comando_1 == "subtrair" then
--    print(index_1 - index_2)
--elseif comando_1 == "multiplicar" then
--    print(index_1 * index_2)
--elseif comando_1 == "dividir" then
--    print(index_1 / index_2)
--else
--    print("Ainda não reconheco este comando!")
--end

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
-- Require
--soma = require('soma')
--
--if comando_1 == "soma" then
--   print(soma(index_1, index_2))
--else
--    print("Comando desconhecido!")
--end

print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")

operations = require('operations')

if comando_1 == "soma" then
    print(operations.add(index_1, index_2))
elseif comando_1 == "subtrair" then
    print(operations.subtract(index_1, index_2))
elseif comando_1 == "multiplicar" then
    print(operations.multiply(index_1, index_2))
elseif comando_1 == "dividir" then
    print(operations.divide(index_1, index_2))
else
    print("Comando desconhecido!")
end