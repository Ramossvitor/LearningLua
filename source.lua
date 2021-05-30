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
