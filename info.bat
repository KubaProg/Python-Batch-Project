@echo off
echo Autor projektu: Jakub Opie³ka

echo -----------------------------------------------------

echo Problem przedstawiony w poleceniu polega na tym, ¿e jako dane wejœciowe mamy okreœlon¹ iloœæ s³oni. Ka¿dy s³oñ ma swoj¹ wagê. Dodatkowo poza pocz¹tkowym ustawieniem s³oni, mamy ich docelowe ustawienie, które zosta³o narzucone póŸniej. Przyjmujemy, ¿e s³onie s¹ ustawione „w rzêdzie” , wiêc stosujemy klasyczn¹ tablicê do odwzorowania konfiguracji. Istotny jest rownie¿ fakt, ¿e aktualnie przestawiane s³onie nie musz¹ ze sob¹ s¹siadowaæ. W zadaniu chodzi o to, aby obliczyæ koszt wszystkich potrzebnych operacji, istotne te¿ jest to, aby s³onie poprzestawiaæ w taki sposób, aby koszt tej operacji by³ mo¿liwie ma³y. 

echo -----------------------------------------------------

echo Przyk³adowo: Maj¹c dwa s³onie:  ‘’A – waga =  100” oraz ‘’B – waga = 200”, zamieniaj¹c je miejscami, kosztem takiej operacji bêdzie suma ich mas czyli 100+200=300.

echo -----------------------------------------------------

echo Ponadto ca³y projekt obudowany jest w menu, które oferuje cztery opcje: Uruchom,Opis,Backup oraz Wyjœcie. G³ówny program Pythona pobiera sobie pliki .txt z katalogu inputs, procesuje te dane i na wyjœciu daje nam po¿¹dany wynik, który zapisywany jest do plików .txt w katalogu outputs. Dodatkowo tworzony jest raport html generowany przez pythona. Backup robi kopie zapasow¹ wszystkich inputów, outputów oraz raport.html .

echo -----------------------------------------------------
echo .
echo ***Kliknij cokolwiek by wróciæ do menu g³ównego.***
pause
menu.bat
