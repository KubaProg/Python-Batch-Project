@echo off
echo Autor projektu: Jakub Opie�ka

echo -----------------------------------------------------

echo Problem przedstawiony w poleceniu polega na tym, �e jako dane wej�ciowe mamy okre�lon� ilo�� s�oni. Ka�dy s�o� ma swoj� wag�. Dodatkowo poza pocz�tkowym ustawieniem s�oni, mamy ich docelowe ustawienie, kt�re zosta�o narzucone p�niej. Przyjmujemy, �e s�onie s� ustawione �w rz�dzie� , wi�c stosujemy klasyczn� tablic� do odwzorowania konfiguracji. Istotny jest rownie� fakt, �e aktualnie przestawiane s�onie nie musz� ze sob� s�siadowa�. W zadaniu chodzi o to, aby obliczy� koszt wszystkich potrzebnych operacji, istotne te� jest to, aby s�onie poprzestawia� w taki spos�b, aby koszt tej operacji by� mo�liwie ma�y. 

echo -----------------------------------------------------

echo Przyk�adowo: Maj�c dwa s�onie:  ��A � waga =  100� oraz ��B � waga = 200�, zamieniaj�c je miejscami, kosztem takiej operacji b�dzie suma ich mas czyli 100+200=300.

echo -----------------------------------------------------

echo Ponadto ca�y projekt obudowany jest w menu, kt�re oferuje cztery opcje: Uruchom,Opis,Backup oraz Wyj�cie. G��wny program Pythona pobiera sobie pliki .txt z katalogu inputs, procesuje te dane i na wyj�ciu daje nam po��dany wynik, kt�ry zapisywany jest do plik�w .txt w katalogu outputs. Dodatkowo tworzony jest raport html generowany przez pythona. Backup robi kopie zapasow� wszystkich input�w, output�w oraz raport.html .

echo -----------------------------------------------------
echo .
echo ***Kliknij cokolwiek by wr�ci� do menu g��wnego.***
pause
menu.bat
