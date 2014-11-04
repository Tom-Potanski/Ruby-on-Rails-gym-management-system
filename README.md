Author: Tomasz Potański

Tiny gym online management system in Ruby on Rails. Functionality is similar to the application created in: The Ruby on Rails tutorial by Michael Hartl. 

There are two types of users in the system:
-coaches (could for example: assign physical activities, diets to gym members)
-gym members (can monitor progress, check actual workout schedule etc.)

Paid project created for my friend: Małgorzata Szwed. 

Link: https://gym-online.herokuapp.com/

Language: Polish

----(more details in polish)----

Nazwa projektu: Elektroniczny system obslugi silowni: Twoja silownia, online

Celem projektu jest stworzenie dynamicznej aplikacji webowej we frameworku Ruby on Rails do obslugi elektronicznego systemu zarzadzania silowni.

W systemie sa dwa rodzaje uzytkownikow:
-trenerzy
-osoby cwiczace/kursanci

Trenerzy ukladaja kazdemu kursantowi plan treningowy (cwiczenie/udzial w zorganizowanych zajeciach) dostosowany do jego potrzeb i aktualnej kondycji. Analizuja postepy kursantow. Ukladaja dieta kursantom. Prowadza konkretne zajecia (plan zajec).

Kursant  ma wglad do planu treningowego na dany tydzien/miesiac/okres. Monitoruje swoje postepy i urealnia termin osiaganych celow. 

Funkcje (w skrocie):
-tworzenie uzytkownika
-CRUD na dietach, trenerach, uzytkownikach itp.
-trener moze ukladac plan kursantowi
-wyswietlenia swojego planu
-zmiana danych osobowych w tym zdjecia
-dostep do polecanych przez silownie diet
-dostep do informacji o trenerach
-kontakt z trenerami

Lista i opis katalogow: standardowy podzial dla aplikacji RoR

Wymagana platforma sprzetowa: Aplikacja moze zostac uruchomiona wlasciwie zarowno na windowsie, mac os x jak i na linuxie.

Wymagania do uruchomienia aplikacji:
-system (np. mac os x, linux, windows)
-interpreter jezyka ruby
-framework: ruby on rails
-przegladarka internetowa (polecany Firefox lub Chrome)
-dostep do terminala
-zainstalowane gemy z aplikacji w odpowiednich wersjach
-baza danych: sqlite (dla wersji developerskiej) oraz postgreSQL dla produkcyjnej
-(przydatne, nie wymagane) system wersjonowania git


Szczegolowa informacja jak jest zbudowana aplikacja (PRZEWODNIK PO "PLYCIE").
Archiwum nalezy wypakowac. 
Jest to typowa aplikacja we frameworku ruby on rails. Struktura katalogow jest standardowa.

	app/ - katalog zawiera glowny kod aplikacji (a wiec modele, widoki, kontrolery, helpery, kod css, js itd.)
	app/assets - arkusze stylow (css), js, obrazy (uwaga, istnieja trzy dopszczalne lokalizacje na te rzeczy)
	bin/ - pliki binarne
	config/ - pliki konfiguracyjne aplikacji
	db/ - pliki zwiazane z baza danych, a wiec np. opis migracji
	doc/ - standardowy folder na dokumentacje aplikacji
	lib/ - katalog bibliotek
	lib/assets - katalog na arkusze stylow (css), js oraz obrazy
	log/ - katalog na plik logow
	public/ - dane dostepne publicznie
	bin/rails/ - podprogramy wewnetrzne aplikacji
	test/ - katalog dla testow
	rspec/ - katalog dla testow z wykorzystaniem rspec
	tmp/ - katalog na pliki tymczasowe
	vendor/ - katalog na pliki dostarczone przez podmioty zewnetrzne
	vendor/assets - arkusze stylow (css), js, obrazy
	README.md - opis projektu
	Gemfile - opis wymaganych gemow dla aplikacji
	.gitignore - opisuje, ktore pliki nie maja byl dodawane do komitow gita

	Wiecej informacji (na temat struktury katalogu) mozna znalezc np. tutaj: https://www.railstutorial.org/book/beginning#sec-the_first_application):
