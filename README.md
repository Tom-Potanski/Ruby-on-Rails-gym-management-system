Autor: Małgorzata Szwed
Nazwa projektu: Elektroniczny system obsługi siłowni: Twoja siłownia, online 

Celem projektu jest stworzenie dynamicznej aplikacji webowej we frameworku Ruby on Rails do obsługi elektronicznego systemu zarządzania siłownią.

W systemie współegzystują dwa rodzaje użytkowników:
-trenerzy
-osoby ćwiczące/kursanci

Trenerzy układają każdemu kursantowi plan treningowy (ćwiczenie/udział w zorganizowanych zajęciach) dostosowany do jego potrzeb i aktualnej kondycji. Analizują postępy kursantów. Układają dietę kursantom. Prowadzą konkretne zajęcia (plan zajęć).

Kursant – ma wgląd do planu treningowego na dany tydzień/miesiąc/okres. Monitoruje swoje postępy i urealnia termin osiąganych celów.  

Funkcje (w skrócie):
-tworzenie użytkownika
-CRUD na dietach, trenerach, użytkownikach itp.
-trener może układać plan kursantowi
-wyświetlenia swojego planu
-zmiana danych osobowych w tym zdjęcia
-dostęp do polecanych przez siłownie diet
-dostęp do informacji o trenerach
-kontakt z trenerami 

Lista i opis katalogów: standardowy podział dla aplikacji RoR

Wymagana platforma sprzętowa: Aplikacja może zostać uruchomiona właściwie zarówno na windowsie, mac os x jak i na linuxie.

Wymagania do uruchomienia aplikacji:
-system (np. mac os x, linux, windows)
-interpreter języka ruby
-framework: ruby on rails
-przeglądarka internetowa (polecany Firefox lub Chrome)
-dostęp do terminala
-zainstalowane gemy z aplikacji w odpowiednich wersjach
-baza danych: sqlite (dla wersji developerskiej) oraz postgreSQL dla produkcyjnej
-(przydatne, nie wymagane) system wersjonowania git 


Szczegółowa informacja jak jest zbudowana aplikacja
jest to typowa aplikacja we frameworku ruby on rails. Struktura katalogów jest standardowa.

	app/ - katalog zawiera główny kod aplikacji (a więc modele, widoki, kontrolery, helpery, kod css, js itd.)
	app/assets - arkusze stylów (css), js, obrazy (uwaga, istnieją trzy dopszczalne lokalizacje na te rzeczy)
	bin/ - pliki binarne
	config/ - pliki konfiguracyjne aplikacji
	db/ - pliki związane z bazą danych, a więc np. opis migracji
	doc/ - standardowy folder na dokumentacje aplikacji
	lib/ - katalog bibliotek
	lib/assets - katalog na arkusze stylów (css), js oraz obrazy
	log/ - katalog na plik logów
	public/ - dane dostępne publicznie
	bin/rails/ - podprogramy wewnętrzne aplikacji
	test/ - katalog dla testów
	rspec/ - katalog dla testów z wykorzystaniem rspec
	tmp/ - katalog na pliki tymczasowe
	vendor/ - katalog na pliki dostarczone przez podmioty zewnętrzne
	vendor/assets - arkusze stylów (css), js, obrazy
	README.md - opis projektu
	Gemfile - opis wymaganych gemów dla aplikacji
	.gitignore - opisuje, które pliki nie mają być dodawane do komitów gita

	Więcej informacji (na temat struktury katalogu) można znaleźć np. tutaj: https://www.railstutorial.org/book/beginning#sec-the_first_application):