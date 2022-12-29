# Glowna funkcja licząca koszt przestawiania sloni
from os import walk
filenames = next(walk("inputs"), (None, None, []))[2]
fileNumber = 0


def convertToIntList(lista):
    ints = []
    for element in lista:
        ints.append(int(element))
    return ints


def decreaseInputsByOne(lista):
    ints = []
    for element in lista:
        ints.append(element-1)
    return ints


for fileName in filenames:
    fileNumber += 1
    plik = open("inputs/"+fileName)
    plik2 = open("outputs/output"+str(fileNumber)+".txt", 'w')

    linia1 = plik.readline()
    ile = int(linia1)

    linia2 = plik.readline()
    wagi = linia2.split(" ")
    wagi = convertToIntList(wagi)

    linia3 = plik.readline()
    kolejnoscPoczatkowa = linia3.split(" ")
    kolejnoscPoczatkowa = convertToIntList(kolejnoscPoczatkowa)
    kolejnoscPoczatkowa = decreaseInputsByOne(kolejnoscPoczatkowa)

    linia4 = plik.readline()
    kolejnoscKoncowa = linia4.split(" ")
    kolejnoscKoncowa = convertToIntList(kolejnoscKoncowa)
    kolejnoscKoncowa = decreaseInputsByOne(kolejnoscKoncowa)

    wynik = 0
    indeks = 0
    temp = 0

    for counter in range(0, ile):
        if kolejnoscPoczatkowa[counter] != kolejnoscKoncowa[counter]:
            for counter2 in range(0, ile):
                if kolejnoscPoczatkowa[counter2] == kolejnoscKoncowa[counter]:
                    indeks = counter2
            wynik += (wagi[kolejnoscPoczatkowa[counter]] +
                      wagi[kolejnoscKoncowa[counter]])
            temp = kolejnoscPoczatkowa[counter]
            kolejnoscPoczatkowa[counter] = kolejnoscKoncowa[counter]
            kolejnoscPoczatkowa[indeks] = temp

    plik2.write("Minimalny koszt to: " + str(wynik))
    plik.close()
    plik2.close()
