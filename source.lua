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