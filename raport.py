from os import walk
inputFilenames = next(walk("inputs"), (None, None, []))[2]
outputFilenames = next(walk("outputs"), (None, None, []))[2]
inputsList = []
outputsList = []
fileNumber = 0

# Pętla zczytująca content z plikow inputowych
for fileName in inputFilenames:
    fileNumber += 1
    plik = open("inputs/"+fileName)

    linia1 = plik.readline()  # 4
    linia2 = plik.readline()  # 100 200 300 400
    linia3 = plik.readline()  # 1 2 3 4
    linia4 = plik.readline()  # 1 3 4 2

    result = linia1 + " | " + linia2 + " | " + linia3 + " | " + linia4
    inputsList.append(result)

# Pętla zczytująca kontent z plikow outputowych
fileNumber = 0
for fileName in outputFilenames:
    fileNumber += 1
    plik = open("outputs/"+fileName)
    linia = plik.readline()  # np 1100
    outputsList.append(linia)

listaZnacznikow = []

for element in range(0, len(inputsList)):
    element = "<tr> <th>"+inputsList[element] + \
        "</th><th>"+outputsList[element]+"</th> </tr>"
    listaZnacznikow.append(element)

    # Creating the HTML file
file_html = open("raport.html", "w")
# Adding the input data to the HTML file
file_html.write('''<html>
<head>
<title>Raport</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
<h1>Raport z działania programu "SŁONIE"</h1>
 <table>
  <tr>
    <th>Input</th>
    <th>Output</th>''')

for element in listaZnacznikow:
    file_html.write(element)

file_html.write('''
</table>
</body>
</html>''')
# Saving the data into the HTML file
file_html.close()
plik.close()
