﻿%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Сутності%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% клієнт(Код клієнта, ПІБ, Дата Народження, Адреса проживання, Номера телефонів (від 1 до 2))
client(100, pib(petrenko, vasyl, ivanovych), birthday(9,may,1996), address(kyiv,tumanyana,2,02000),[0951342551]).
client(101, pib(avramenko, volodymir, petrovych), birthday(22,jun,1995), address(kyiv,konovalzya,34,02000),[0505452651]).
client(102, pib(yaskova, yana, oleksandrivna), birthday(6,sep,1985), address(kyiv,vasylkivska,03150,index),[0951871551,0504351221]).
client(103, pib(kryukova, nina, ivanovna), birthday(25,feb,2000), address(kyiv,tolstogo,14,02000),[0951342551,0504352291]).

% адвокат(Код адвоката, ПІБ, Спеціалізація, Номера телефонів (від 1 до 2), Робочі дні)
lawyer(201, pib(ignatenko,igor,oleksandrovych),"уголовні справи",[0957655414,0502747192],[pn,vt,cht,pt]).
lawyer(202, pib(gurin,vladyslav,olegovych),"адміністративні справи",[0976543421],[pn,sr,pt]).
lawyer(203, pib(mytko,grigoriy,vladyslavovych),"IT, аутсорсінг",[0956644511,0675312322],[vt,cht,sb]).
lawyer(204, pib(shulga,mykhailo,mykolayovych),"громадянські справи",[0952344211,0677658852],[vt,cht,sb]).
lawyer(205, pib(kachan,artem,petrovych),"уголовні справи",[0956546426],[vt,cht,sb]).
lawyer(206, pib(gudko,kostiantyn,maksymovych),"налогові суперечки",[067333661],[vt,cht,sb]).
lawyer(207, pib(savruk,solomiya,yaroslavivna),"ІТ, аутсорсінг",[0678836611],[pn,vt,pt,sb]).

% послуга(Код послуги, Назва Послуги, Ціна)
service(3001,"відстрочення виплати кредиту",1700).
service(3002,"зменшення ставок по кредиту",1200).
service(3003,"участь у допиті свідків, підозрюваних, обвинувачених",2700).
service(3004,"написання позовної заяви",1000).
service(3005,"стягнення моральної та матеріальної шкоди",1500).

% Досьє(Код Досьє, Статус(Відкрита / Закрита), Дата-відкриття, Дата-закриття, Оплачено(True|False), Код Клієнта)
dossier(50001,zakryta,open_date(11,mar,2019),close_date(31,jun,2019),true,100).
dossier(50002,vidkryta,open_date(16,aug,2019),vidkryta,false,100).

dossier(50003,zakryta,open_date(16,feb,2018),close_date(15,feb,2019),true,101).

dossier(50004,zakryta,open_date(16,sep,2017),close_date(9,oct,2017),true,102).
dossier(50005,zakryta,open_date(21,feb,2018),close_date(15,mar,2018),true,102).
dossier(50006,vidkryta,open_date(14,oct,2020),vidkryta,false,102).

dossier(50007,zakryta,open_date(14,jan,2021),close_date(18,feb,2021),false,103).

% запис(Код Запису, Дата-Запису, Час-Запису, Код Адвоката, Код Досьє, Послуги)
% Послуги - зв'язок м до н до Послуг

appointment(400001,app_date(13,mar,2019),app_time(12:00),201,50001,[3004,3005]).
appointment(400002,app_date(25,jun,2019),app_time(15:00),201,50001,[3004]).

appointment(400003,app_date(18,aug,2019),app_time(9:45),202,50002,[3001]).
appointment(400004,app_date(23,sep,2019),app_time(18:00),201,50002,[3005]).
appointment(400005,app_date(9,dec,2019),app_time(11:30),205,50002,[3004]).

appointment(400006,app_date(21,feb,2018),app_time(13:30),203,50003,[3003]).
appointment(400007,app_date(27,feb,2018),app_time(9:30),203,50003,[3004]).
appointment(400008,app_date(31,mar,2018),app_time(14:30),206,50003,[3001]).
appointment(400009,app_date(11,feb,2019),app_time(13:45),202,50003,[3003,3004]).

appointment(400010,app_date(1,oct,2017),app_time(9:45),201,50004,[3001]).

appointment(400011,app_date(23,feb,2018),app_time(10:45),201,50005,[3001,3004]).
appointment(400012,app_date(11,mar,2018),app_time(13:15),203,50005,[3003]).

appointment(400013,app_date(16,oct,2020),app_time(16:15),204,50006,[3004,3005]).
appointment(400014,app_date(21,nov,2020),app_time(16:00),203,50006,[3003,3004]).
appointment(400015,app_date(11,feb,2021),app_time(12:15),207,50006,[3002]).

appointment(400016,app_date(21,jan,2021),app_time(9:15),205,50007,[3001,3004]).
appointment(400017,app_date(11,feb,2021),app_time(12:45),206,50007,[3001]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Звязки%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% адвокат-послуга(Код Адвоката, Код Послуги)
lawyerService(201,3001).
lawyerService(201,3004).
lawyerService(201,3005).

lawyerService(202,3001).
lawyerService(202,3002).
lawyerService(202,3003).
lawyerService(202,3004).

lawyerService(203,3003).
lawyerService(203,3004).

lawyerService(204,3003).
lawyerService(204,3004).
lawyerService(204,3005).

lawyerService(205,3001).
lawyerService(205,3004).
lawyerService(205,3005).

lawyerService(206,3001).
lawyerService(206,3002).

lawyerService(207,3001).
lawyerService(207,3002).


% позначає зв'язок м до н Запис - Послуга, для зручного користування
appointmentService(AK, SK) :- appointment(AK,_,_,_,_,SERVICES), member(SK, SERVICES), !.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Додаткові предикати%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Отримати теперешній рік
year(Year) :-
    get_time(Stamp),
    stamp_date_time(Stamp, DateTime, local),
    date_time_value(year, DateTime, Year).

%Повертає вартість послуги за її кодом
service_value(SK,VALUE):- service(SK,_,VALUE).

%повертає вік клієнта за його кодом
client_age(CK, AGE):- client(CK, _, birthday(_,_,BIRTH_YEAR), _,_),year(CURRENT_YEAR), AGE is CURRENT_YEAR - BIRTH_YEAR.

%Знаходить загальну ціну послуг
% AMOUNT_FUNCTION - предикат, який приймає ПК і повертає одне значення (Наприклад, вік, вартість)
total_amount([],0,_).
total_amount([KEY|Rest],Suma,AMOUNT_FUNCTION):- call(AMOUNT_FUNCTION,KEY,CURRENT_AMMOUNT),
												total_amount(Rest,Rest_Suma,AMOUNT_FUNCTION),
												Suma is CURRENT_AMMOUNT + Rest_Suma, !.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%запити%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Запит № 1
% Порахувати прибуток бюро за вказаний рік за вказану послугу(у записах є дата, записи пов'язані з послугами, у послуг є дата)
% а)якщо предикат має вигляд task01(+Year,+ServiceName,-Total), то запит
% буде мати вигляд: task01(2018,"написання позовної заяви",T). Це виведе
% прибуток досьє за вказану послугу і заданий рік. T = 2000.
% б)якщо предикат має вигляд task01(+Year,-ServiceName,+Total), то запит
% буде мати вигляд: task01(2018,P,2000). Це виведе назви послуг, за які
% було отримано вказаний прибуток за конкретний рік. P = "написання позовної заяви" ;
% в)якщо предикат має вигляд task01(+Year,-ServiceName,-Total), то запит
% буде мати вигляд task01(2018,P,T). Виведе пари з назвами усіх існуючих
% послуг та прибутком за них за вказаний рік.
% P = "відстрочення виплати кредиту",T = 3400 ;
% P = "зменшення ставок по кредиту",T = 0 ;
% P = "участь у допиті свідків, підозрюваних, обвинувачених",T = 5400 ;
% P = "написання позовної заяви",T = 2000 ;
% P = "стягнення моральної та матеріальної шкоди",T = 0.
% г)предикат task01(-Year,+ServiceName,-Total), запит task01(Y,"написання позовної
% заяви",T). виведе прибуток за дану послугу за всі роки роботи бюро разом T = 5000.
% д)предикат task01(+Year,+ServiceName,+Total), запит
% task01(2018,"написання позовної заяви",2000). повертає true, оскільки
% дійсно за вказаний рік і задану послугу було отримано даний прибуток.
task01(Year,ServiceName,Total):-
    service(ServiceCode,ServiceName,Price),
    get_total_apps(Year,ServiceCode,TotalApps),
    Total is TotalApps*Price.

% Загальна кількість записів на задану послугу за конкретний рік
get_total_apps(Year,ServiceCode,Total):-findall(ApK,getApps(Year,ServiceCode,ApK),ListApKs), length(ListApKs,Total).

% Повертає true, якщо існує запис, що відбувся в конкретному році на
% задану послугу і якщо було вже оплачено(дивитися в Досьє справи).
getApps(Year,ServiceCode,ApK):-appointment(ApK,app_date(_,_,Year),_,_,DK,_),
                               dossier(DK,_,_,_,true,_),
                               appointmentService(ApK, ServiceCode).


% Запит № 2
% Для кожного адвоката порахувати кількість справ за останні два роки.
%task02(-Pairs) - Лише один варіант предикату
task02(Pairs):-findall((LastName,Total),task02_helper(LastName, Total),Pairs).

task02_helper(LastName,Total):-lawyer(IdL,pib(LastName,_,_),_,_,_),year(CurrYear), LastTwo is CurrYear - 2,get_total_cases(LastTwo,IdL,Total).

% Загальна кількість справ до заданого адвоката з датами проведення запису більшою або рівною за задану
get_total_cases(Year,LayerCode,Total):-setof(DCode,getCases(Year,LayerCode,DCode),ListCases), length(ListCases,Total).

% Повертає всі коди справ адвоката з датою проведення запису більшою або рівною за задану
getCases(Year,LCode,DCode):-appointment(_,app_date(_,_,YearA),_,LCode,DCode,_), YearA >= Year, dossier(DCode,_,_,_,_,_).

% Запит № 3
% Знайти клієнтів, які в період з РІК1 по РІК2 звертались за послугою з відстрочення виплати кредиту
% та ніколи не звертались за послугою зменшення ставок по кредиту

%Повертає true, якщо клієнт звертався за послугою з відстрочення виплати кредиту в період з РІК1 по РІК2
task03_helper_1(RIK1,RIK2,CK):- appointment(AK,app_date(_,_,APPOINT_YEAR),_,_,DK,_),
								appointmentService(AK,3001),
								APPOINT_YEAR >= RIK1,
								APPOINT_YEAR =< RIK2,
								dossier(DK,_,_,_,_,CK).

%Якщо звертався за послугою зменшення ставок по кредиту
task03_helper_2(RIK1,RIK2,CK):- appointment(AK,app_date(_,_,APPOINT_YEAR),_,_,DK,_),
								appointmentService(AK,3002),
								APPOINT_YEAR >= RIK1,
								APPOINT_YEAR =< RIK2,
								dossier(DK,_,_,_,_,CK).

task03_helper_full(RIK1,RIK2,CK):- task03_helper_1(RIK1,RIK2,CK),not(task03_helper_2(RIK1,RIK2,CK)).

%task03(+RIK1,+RIK2,-CLIENTS) - Лише один варіант предикату
task03(RIK1,RIK2,CLIENTS):- setof(CK,task03_helper_full(RIK1,RIK2,CK),CLIENTS),!.

%Повертає прізвища та ім'я клієнтів, за їх кодом
task03_formatter([], []):-!.
task03_formatter([CLIENT_PK| REST_CLIENTS], [[NAME,SURNAME]|REST_RESULT]):- client(CLIENT_PK, pib(NAME, SURNAME, _), _, _, _), task03_formatter(REST_CLIENTS,REST_RESULT).

% Запит з сумуванням
% Запит № 4 Середня ціна послуг
%task04(-AMOUNT) - Лише один варіант предикату
task04(AMOUNT):- findall(SK,service(SK,_,_),SERVICES),
				total_amount(SERVICES,SUMA, service_value),
				length(SERVICES,SERVICES_AMOUNT),
				AMOUNT is SUMA / SERVICES_AMOUNT.

% Запит № 5 Середній вік клієнтів
%task05(-AGE) - Лише один варіант предикату
task05(AGE):- findall(CK,client(CK,_,_,_,_),AGES),
				total_amount(AGES,TOTAL_AGE, client_age),
				length(AGES,AGE_AMOUNT),
				AGE is TOTAL_AGE / AGE_AMOUNT.


% Запити з "діленням"
% Запит № 6 Знайти адвокатів (прізвище та ім’я), які надають хоч одну послугу, з тих які надає заданий адвоката.
% предикат task06(?LastName,?FirstName,?Lawyers). буде працювати з
% будь-якими типами параметрів.
% для прикладу, запит task06(LastName,Name,[(gurin, vladyslav),
% (ignatenko, igor), (kachan, artem), (shulga, mykhailo)]). виведе
% прізвища та імена адвокатів і з якими у заданих Lawyers є
% хоч одна спільна послуга: LastName = mytko, Name = grigoriy;
task06(LastName,FirstName,Lawyers) :-
             setof((LastNameRes,FirstNameRes),
             atLeastOne(LastName,FirstName,LastNameRes,FirstNameRes),Lawyers).

%адвокат, що надає хоч одну ж таку послугу, що і заданий адвокат
atLeastOne(LastName,FirstName,LastNameRes,FirstNameRes):-
                        lawyer(LKS,pib(LastName,FirstName,_),_,_,_),
                        lawyerService(LKS,SKS),
						lawyerService(LK,SKS),
                        LK \= LKS,
						lawyer(LK,pib(LastNameRes,FirstNameRes,_),_,_,_).


% Запит № 7 Знайти адвокатів (прізвище та ім’я), які надають тільки
% послуги(хоча б одну) заданого адвоката і ніякі інші.
% предикат task07(?LastName,?FirstName,?Lawyers). буде працювати з
% будь-якими типами параметрів.
% для прикладу, запит task07(gurin,vladyslav,R). виведе
% список адвокатів, які надають тільки ті послуги(хоча б одну), що і
% gurin vladyslav і ніякі інші: R = [(gudko, kostiantyn),  (mytko, grigoriy),  (savruk, solomiya)].
task07(LastName,FirstName,Lawyers) :-
             setof((LastNameRes,FirstNameRes),
             onlyLServices(LastName,FirstName,LastNameRes,FirstNameRes),Lawyers).

% адвокат, що надає хоч одну послугу заданого адвоката і не надає жодної
% такої послуги, яку б не надавав заданий адвокат
onlyLServices(LastName,FirstName,LastNameRes,FirstNameRes):-
    atLeastOne(LastName,FirstName,LastNameRes,FirstNameRes),
    not(badLawyersOnly(LastName,FirstName,LastNameRes,FirstNameRes)).

% адвокати, які надають послуги, що не надає заданий адвокат
badLawyersOnly(LastName,FirstName,LastNameRes,FirstNameRes) :-
    lawyer(LK,pib(LastNameRes,FirstNameRes,_),_,_,_),
    notLServices(LastName,FirstName,ServiceCode),
    lawyerService(LK,ServiceCode).

% послуги, які не надає даний адвокат
notLServices(LastName,FirstName,ServiceCode):-
    lawyer(LKS,pib(LastName,FirstName,_),_,_,_),
    service(ServiceCode,_,_),
    not(lawyerService(LKS,ServiceCode)).


% Запит № 8 Знайти адвокатів (прізвище та ім’я), які надають усі ті послуги, що і послуги заданого адвоката,
% і можуть надавати ще якісь, які не надає цей адвокат.
% предикат task08(?LastName,?FirstName,?Lawyers). буде працювати з
% будь-якими типами параметрів.
% для прикладу, запит task08(LastName,FirstName,R). виведе імена та
% прізвища усіх адвокатів разом зі спиками тих адвокатів, що
% надають усі ті послуги, що і виведений адвокат і можуть надавати ще
% якісь, які не надає цей адвокат:
% LastName = gudko,FirstName = kostiantyn,R = [(gurin, vladyslav), (savruk, solomiya)] ;
% LastName = ignatenko,FirstName = igor,R = [(kachan, artem)] ; і так далі

task08(LastName,FirstName,Lawyers):- setof((LastNameRes,FirstNameRes),
                                     onlyServicesSet(LastName,FirstName,LastNameRes,FirstNameRes),Lawyers).

% адвокати,що надають усі ті послуги, що і заданий адвокат і можуть
% надавати ще якісь, які не надає цей адвокат
onlyServicesSet(LastName,FirstName,LastNameRes,FirstNameRes):-
						atLeastOne(LastName,FirstName,LastNameRes,FirstNameRes),
						not(badLawyers(LastName,FirstName,LastNameRes,FirstNameRes)).

% адвокати, що не надають послуги, які надає заданий адвокат
badLawyers(LastName,FirstName,LastNameRes,FirstNameRes):-
                     lawyer(LKS,pib(LastName,FirstName,_),_,_,_),
                     lawyerService(LKS,SK),
                     lawyer(LK,pib(LastNameRes,FirstNameRes,_),_,_,_),
                     not(lawyerService(LK,SK)).


% Запит № 9 Знайти адвокатів (прізвище та ім’я), які надають в точності такі самі послуги як послуги заданого адвоката.
% предикат task09(?LastName,?FirstName,?Lawyers). буде працювати з
% будь-якими типами параметрів.
% для прикладу, запит task09(LastName,FirstName,R). виведе імена та
% прізвища усіх адвокатів разом зі спиками тих адвокатів, що
% надаютьв точності такі самі послуги як, що і виведений адвокат:
% LastName = gudko, FirstName = kostiantyn, R = [(savruk, solomiya)] ;
% LastName = ignatenko, FirstName = igor, R = [(kachan, artem)] ; і так далі
task09(LastName,FirstName,Lawyers):- setof((LastNameRes,FirstNameRes),
						onlyServicesSet1(LastName,FirstName,LastNameRes,FirstNameRes),Lawyers).

% адвокати, що не надають послуги, які надає заданий адвокат
badLawyers1(LastName,LastName2):-
				lawyer(LKS,pib(LastName2,_,_),_,_,_),
				lawyerService(LKS,SKS),
				LastName \= LastName2,
				lawyer(LKS1,pib(LastName,_,_),_,_,_),
				not(lawyerService(LKS1,SKS)).

% адвокати,що надають в точності такі самі послуги, що і заданий адвокат
onlyServicesSet1(LastName,FirstName,LastNameRes,FirstNameRes):-
					lawyer(LKS,pib(LastName,FirstName,_),_,_,_),
					lawyerService(LKS,SKS),
					lawyer(LKS2,pib(LastNameRes,FirstNameRes,_),_,_,_),
					LastName \= LastNameRes,
					lawyerService(LKS2,SKS),
					not(task09_helper(LastName,LastNameRes)),
					not(badLawyers1(LastName,LastNameRes)).

task09_helper(LastName,LastName2):-
				lawyer(LKS,pib(LastName,_,_),_,_,_),
				lawyerService(LKS,SKS),
				lawyer(LKS1,pib(LastName2,_,_),_,_,_),
				not(lawyerService(LKS1,SKS)).


% записаний_на
% is_registered_on(?Client,?Service). буде працювати з
% будь-якими типами параметрів.
% для прикладу, запит is_registered_on(Client,Service). виведе клієнтів та
% послуги на які вони були записані:
% Client = petrenko, Service = "написання позовної заяви" ;
% Client = petrenko, Service = "стягнення моральної та матеріальної шкоди" ; і так далі

:-op(200,yfx,is_registered_on).
% клієнти та послуги на які вони записані:
is_registered_on(Client,Service):-
						client(CId,pib(Client,_,_),_,_,_),
						dossier(DId,_,_,_,_,CId),
						appointment(AId,_,_,_,DId,_),
						service(SId,Service,_),
						appointmentService(AId,SId).


% надає_адвокат
% is_provided_by(?Service,?Lawyer). буде працювати з
% будь-якими типами параметрів.
% для прикладу, запит is_provided_by(Service,Lawyer). виведе послуги та
% адвокатів, які надавали ці послуги:
% Service = "відстрочення виплати кредиту",Lawyer = pib(ignatenko, igor, oleksandrovych) ;
% Service = "відстрочення виплати кредиту",Lawyer = pib(gurin, vladyslav, olegovych) ; і так далі

:-op(300,xfy,is_provided_by).
% послуги та адвокати, які надають ці послуги:
is_provided_by(Service,Lawyer):-
				service(SId,Service,_),
				lawyer(LId, Lawyer,_,_,_),
				lawyerService(LId,SId).


Client is_registered_on Service is_provided_by Lawyer:-
				client(CId,Client,_,_,_),
				dossier(DId,_,_,_,_,CId),
				lawyer(LId, Lawyer,_,_,_),
				appointment(AId,_,_,LId,DId,_),
				service(SId,Service,_),
				appointmentService(AId,SId).
				
				


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1 Запит
:- write("Запит 1 ."), writeln("Порахувати прибуток бюро за 2018 за відстрочення виплати кредиту").
:- writeln("Бажаний результат:   3400").
:- task01(2018,"відстрочення виплати кредиту",R), write("Отримали: \t\t      "),writeln(R), nl.

% 2 Запит
:- write("Запит 2:"), writeln("\nДля кожного адвоката порахувати кількість записів клієнтів до нього, які були здійснені протягом останніх двох років.").
:- writeln("Бажаний результат:  [(ignatenko,2),(gurin,2),(mytko,1),(shulga,1),(kachan,2),(gudko,1),(savruk,1)]").
:- task02(R), write("Отримали: \t\t"),writeln(R), nl.

% 3 Запит
:- write("Запит 3:"), writeln("\nЗнайти клієнтів, які в період з 2017 по 2018 звертались за послугою з відстрочення виплати кредиту"),
	writeln("та ніколи не звертались за послугою зменшення ставок по кредиту").
:- writeln("Бажаний результат:  [[avramenko,volodymir],[yaskova,yana]]").
:- task03(2017,2018,R1), task03_formatter(R1,R), write("Отримали: \t\t     "),writeln(R), nl.

% 4 Запит
:- write("Запит 4:"), writeln("\nСередня ціна послуг").
:- writeln("Бажаний результат: 1620").
:- task04(R), write("Отримали: \t\t    "),writeln(R), nl.

% 5 Запит
:- write("Запит 5:"), writeln("\nСередній вік клієнтів").
:- writeln("Бажаний результат:     27").
:- task05(R), write("Отримали: \t\t\t"),writeln(R), nl.

% 6 Запит
:- write("Запит 6:"), writeln("\nЗнайти адвокатів (прізвище та ім’я), які надають хоч одну послугу, з тих які надає kostiantyn gudko. ").
:- writeln("Бажаний результат: [(gurin,vladyslav),(ignatenko,igor),(kachan,artem),(savruk,solomiya)]").
:- task06(gudko,kostiantyn,R), write("Отримали: \t\t\t"),writeln(R), nl.

% 7 Запит
:- write("Запит 7:"), writeln("\nЗнайти адвокатів (прізвище та ім’я), які надають тільки послуги vladyslav gurin і ніякі інші.").
:- writeln("Бажаний результат:  [(gudko,kostiantyn),(mytko,grigoriy),(savruk,solomiya)]").
:- task07(gurin,vladyslav,R), write("Отримали: \t\t\t"),writeln(R), nl.

% 8 Запит
:- write("Запит 8:"), writeln("\nЗнайти адвокатів (прізвище та ім’я), які надають усі ті послуги, що і послуги grigoriy mytko,"),
	writeln("і можуть надавати ще якісь, які не надає цей адвокат.").
:- writeln("Бажаний результат: (gurin, vladyslav),  (shulga, mykhailo)").
:- task08(mytko,grigoriy,R), write("Отримали: \t\t\t"),writeln(R), nl.

% 9 Запит
:- write("Запит 9:"), writeln("\nЗнайти адвокатів (прізвище та ім’я), які надають в точності такі самі послуги як послуги solomiya savruk.").
:- writeln("Бажаний результат:  [(gudko,kostiantyn)]").
:- task09(savruk,solomiya,R), write("Отримали: \t\t\t"),writeln(R), nl.


% Оператори
:- write("Оператори:"), writeln("\nWho is_registered_on \"відстрочення виплати кредиту\" is_provided_by pib(ignatenko,igor,oleksandrovych).").
:- writeln("Бажаний результат:  [pib(yaskova,yana,oleksandrivna)]").
:- setof(Who, Who is_registered_on "відстрочення виплати кредиту" is_provided_by pib(ignatenko,igor,oleksandrovych), R), write("Отримали: \t\t\t"),writeln(R), nl.
