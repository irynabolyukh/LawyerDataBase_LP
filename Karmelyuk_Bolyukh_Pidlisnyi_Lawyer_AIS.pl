%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Сутності%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% клієнт(Код клієнта, ПІБ, Дата Народження, Адреса проживання, Номера телефонів (від 1 до 2))
client(100, pib(petrenko, vasyl, ivanovych), birthday(9,may,1996), address(kyiv,tumanyana,2,02000),[0951342551]).
client(101, pib(avramenko, volodymir, petrovych), birthday(22,jun,1995), address(kyiv,konovalzya,34,02000),[0505452651]).
client(102, pib(yaskova, yana, oleksandrivna), birthday(6,sep,1985), address(kyiv,vasylkivska,03150,index),[0951871551,0504351221]).
client(103, pib(kryukova, nina, ivanovna), birthday(25,feb,2000), address(kyiv,tolstogo,14,02000),[0951342551,0504352291]).

% адвокат(Код адвоката, ПІБ, Спеціалізація, Номера телефонів (від 1 до 2), Робочі дні)
lawyer(201, pib(ignatenko,igor,oleksandrovych),"уголовні справи",[0957655414,0502747192],[pn,vt,cht,pt]).
lawyer(202, pib(gurin,vladyslav,olegovych),"адміністративні справи",[0976543421],[pn,sr,pt]).
lawyer(203, pib(mytko,grigoriy,vladyslavovych),"IT, аутсорсінг",[0956644511,0675312322],[vt,cht,sb]).
lawyer(204, pib(shulga,mykhailo,mykolayovych),"громадянські справи",[09523464211,0677658852],[vt,cht,sb]).
lawyer(205, pib(kachan,artem,petrovych),"уголовні справи",[0956546426],[vt,cht,sb]).
lawyer(206, pib(gudko,kostiantyn,maksymovych),"налогові суперечки",[0673336611],[vt,cht,sb]).
lawyer(207, pib(savruk,solomiya,yaroslavivna),"ІТ, аутсорсінг",[0678836611],[pn,vt,pt,sb]).


% послуга(Код послуги, Назва Послуги, Ціна)
service(3001,"відстрочення виплати кредиту",1700).
service(3002,"зменшення ставок по кредиту",1200).
service(3003,"участь у допиті свідків, підозрюваних, обвинувачених",2700).
service(3004,"написання позовної заяви",1000).
service(3005,"стягнення моральної та матеріальної шкоди",1500).

% Досьє(Код Досьє, Статус(Відкрита / Закрита), Дата-відкриття, Дата-закриття, Оплачено(True|False), Код Клієнта)
dossier(50001,zakryta,open_date(11,mar,2019),close_date(31,jun,2019),true,100).
dossier(50002,vydkryta,open_date(16,aug,2019),vydkryta,false,100).

dossier(50003,zakryta,open_date(16,feb,2018),close_date(15,feb,2019),true,101).

dossier(50004,zakryta,open_date(16,sep,2017),close_date(9,oct,2017),true,102).
dossier(50005,zakryta,open_date(21,feb,2018),close_date(15,mar,2018),true,102).
dossier(50006,vydkryta,open_date(14,oct,2020),vydkryta,false,102).

dossier(50007,zakryta,open_date(14,jan,2021),close_date(18,feb,2021),false,103).

% запис(Код Запису, Дата-Запису, Час-Запису, Код Адвоката, Код Досьє)
appointment(400001,app_date(13,mar,2019),app_time(12:00),201,50001).
appointment(400002,app_date(25,jun,2019),app_time(15:00),201,50001).

appointment(400003,app_date(18,aug,2019),app_time(9:45),202,50002).
appointment(400004,app_date(23,sep,2019),app_time(18:00),201,50002).
appointment(400005,app_date(9,dec,2019),app_time(11:30),203,50002).

appointment(400006,app_date(21,feb,2018),app_time(13:30),203,50003).
appointment(400007,app_date(27,feb,2018),app_time(9:30),203,50003).
appointment(400008,app_date(31,mar,2018),app_time(14:30),202,50003).
appointment(400009,app_date(11,feb,2019),app_time(13:45),202,50003).


appointment(400010,app_date(1,oct,2017),app_time(9:45),201,50004).

appointment(400011,app_date(23,feb,2018),app_time(10:45),201,50005).
appointment(400012,app_date(11,mar,2018),app_time(13:15),203,50005).

appointment(400013,app_date(16,oct,2020),app_time(16:15),203,50006).
appointment(400014,app_date(21,nov,2020),app_time(16:00),203,50006).
appointment(400015,app_date(11,feb,2021),app_time(12:15),202,50006).

appointment(400016,app_date(21,jan,2021),app_time(9:15),202,50007).
appointment(400017,app_date(11,feb,2021),app_time(12:45),201,50007).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Звязки%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% адвокат-послуга(Код Адвоката, Код Послуги)
lawyerService(201,3001).
lawyerService(201,3004).
lawyerService(201,3005).

lawyerService(202,3001).
lawyerService(202,3002).
lawyerService(202,3003).
lawyerService(202,3004).

lawyerService(203,3004).
lawyerService(203,3003).

lawyerService(204,3003).
lawyerService(204,3004).
lawyerService(204,3005).

lawyerService(205,3001).
lawyerService(205,3004).
lawyerService(205,3005).

lawyerService(206,3001).
lawyerService(206,3002).

lawyerService(207,3005).

% запис-послуга (Код Запису, Код Послуги)
appointmentService(400010,3001).

appointmentService(400006,3001).

appointmentService(400007,3001).

%appointmentService(400006,3002).


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
%%%%%%%%%%%%%%%%%%%%Iryna%%%%%%%%%%%%%%%%%%%%%%%%
% Порахувати прибуток бюро за вказаний рік за вказану послугу(у записах є дата, записи пов'язані з послугами, у послуг є дата)
task01(Year,ServiceName,Total):-get_total_apps(Year,ServiceCode,TotalApps), service(ServiceCode,ServiceName,Price), Total is TotalApps*Price.
% Загальна кількість записів на задану послугу за конкретний рік
get_total_apps(Year,ServiceCode,Total):-findall(ApK,getApps(Year,ServiceCode,ApK),ListApKs), length(ListApKs,Total).
% Повертає true, якщо існує запис, що відбувся в конкретному році на задану послугу.
getApps(Year,ServiceCode,ApK):-appointment(ApK,app_date(_,_,Year),_,_,_), appointmentService(ApK, ServiceCode).


% Запит № 2
% Для кожного адвоката порахувати кількість справ за останні два роки.

% Запит № 3
%%%%%%%%%%%%%%%%%%%%Kostyantyn%%%%%%%%%%%%%%%%%%%%%%%%
% Знайти клієнтів, які в період з РІК1 по РІК2 звертались за послугою з відстрочення виплати кредиту
% та ніколи не звертались за послугою зменшення ставок по кредиту

%Повертає true, якщо клієнт звертався за послугою з відстрочення виплати кредиту в період з РІК1 по РІК2
task03_helper_1(RIK1,RIK2,CK):- appointmentService(AK,3001),
								appointment(AK,app_date(_,_,APPOINT_YEAR),_,_,DK),
								APPOINT_YEAR >= RIK1,
								APPOINT_YEAR =< RIK2,
								dossier(DK,_,_,_,_,CK).

%Якщо звертався за послугою зменшення ставок по кредиту
task03_helper_2(RIK1,RIK2,CK):- appointmentService(AK,3002),
								appointment(AK,app_date(_,_,APPOINT_YEAR),_,_,DK),
								APPOINT_YEAR >= RIK1,
								APPOINT_YEAR =< RIK2,
								dossier(DK,_,_,_,_,CK).

task03_helper_full(RIK1,RIK2,CK):- task03_helper_1(RIK1,RIK2,CK),not(task03_helper_2(RIK1,RIK2,CK)).

task03(RIK1,RIK2,CLIENTS):- findall(CK,task03_helper_full(RIK1,RIK2,CK),CLIENTS),!.

% Запит з сумуванням
%%%%%%%%%%%%%%%%%%%%Kostyantyn%%%%%%%%%%%%%%%%%%%%%%%%
% Запит № 4 Середня ціна послуг
task04(AMOUNT):- findall(SK,service(SK,_,_),SERVICES),
				total_amount(SERVICES,SUMA, service_value),
				length(SERVICES,SERVICES_AMOUNT),
				AMOUNT is SUMA / SERVICES_AMOUNT.

%%%%%%%%%%%%%%%%%%%%Kostyantyn%%%%%%%%%%%%%%%%%%%%%%%%
% Запит № 5 Середній вік клієнтів
task05(AGE):- findall(CK,client(CK,_,_,_,_),AGES),
				total_amount(AGES,TOTAL_AGE, client_age),
				length(AGES,AGE_AMOUNT),
				AGE is TOTAL_AGE / AGE_AMOUNT.



% Запити з "діленням"
%%%%%%%%%%%%%%%%%%%%Iryna%%%%%%%%%%%%%%%%%%%%%%%%
% Запит № 6 Знайти адвокатів (прізвище та ім’я), які надають хоч одну послугу, з тих які надає заданий адвоката.
task06(LastName,FirstName,Lawyers) :-
             setof((LastNameRes,FirstNameRes),
             atLeastOne(LastName,FirstName,LastNameRes,FirstNameRes),Lawyers).
%адвокат, що надає хоч одну ж таку послугу, що і заданий адвокат
atLeastOne(LastName,FirstName,LastNameRes,FirstNameRes):-
                        lawyer(LKS,pib(LastName,FirstName,_),_,_,_),
                        lawyerService(LKS,SKS), lawyerService(LK,SKS),
                        LK \= LKS, lawyer(LK,pib(LastNameRes,FirstNameRes,_),_,_,_).

%%%%%%%%%%%%%%%%%%%Iryna%%%%%%%%%%%%%%%%%%%%%%%%%
% Запит № 7 Знайти адвокатів (прізвище та ім’я), які надають тільки
% послуги(хоча б одну) заданого адвоката і ніякі інші.
%task07(LastName,FirstName,Lawyers):-
 %              setof((LastNameRes,FirstNameRes),
   %            onlySameServices(LastName,FirstName,LastNameRes,FirstNameRes),Lawyers).
%послуги, які не надає заданий адвокат
%notLServices(LastName,FirstName,SK):-
  %  lawyer(LKS,pib(LastName,FirstName,_),_,_,_),
  %  not(lawyerService(LKS,SK)).
% адвокат, який надає хоч одну послугу, що й заданий адвокат і не надає
% жодної послуги, яку б не надавав заданий адвокат
% onlySameServices(LastName,FirstName,LastNameRes,FirstNameRes):-
% atLeastOne(LastName,FirstName,LastNameRes,FirstNameRes),
   %            not(badLawyersOnly(LastName,FirstName,LastNameRes,FirstNameRes)).
%адвокат, який надає хоч одну послугу, яку не надає заданий адвокат
%badLawyersOnly(LastName,FirstName,LastNameRes,FirstNameRes):-
    %                 lawyer(LK,pib(LastNameRes,FirstNameRes,_),_,_,_),
     %                lawyerService(LK,SK),
     %                notLServices(LastName,FirstName,SK).

% Запит № 8 Знайти адвокатів (прізвище та ім’я), які надають усі ті послуги, що і послуги заданого адвоката,
% і можуть надавати ще якісь, які не надає цей адвокат.
task08(LastName,FirstName,Lawyers):- setof((LastNameRes,FirstNameRes),onlyServicesSet(LastName,FirstName,LastNameRes,FirstNameRes),Lawyers).
onlyServicesSet(LastName,FirstName,LastNameRes,FirstNameRes):- atLeastOne(LastName,FirstName,LastNameRes,FirstNameRes), not(badLawyers(LastName,FirstName,LastNameRes,FirstNameRes)).
badLawyers(LastName,FirstName,LastNameRes,FirstNameRes):-
                     lawyer(LKS,pib(LastName,FirstName,_),_,_,_),
                     lawyerService(LKS,SK),
                     lawyer(LK,pib(LastNameRes,FirstNameRes,_),_,_,_),
                     not(lawyerService(LK,SK)).


% Запит № 9 Знайти адвокатів (прізвище та ім’я), які надають в точності такі самі послуги як послуги заданого адвоката.


% оператори
% записаний_на
% надає_адвокат

% 1 Запит
:- write("Запит 1 ."), writeln("Порахувати прибуток бюро за вказаний рік за вказану послугу(у записах є дата, записи пов'язані з послугами, у послуг є дата)").
:- writeln("Бажаний результат:   3400").
:- task01(2018,"відстрочення виплати кредиту",R), write("Отримали: \t\t    "),writeln(R), nl.

% 2 Запит
:- write("Запит 2 ."), writeln("Для кожного адвоката порахувати кількість справ за останні два роки.").
:- writeln("Бажаний результат: ").
% :- task05(R), write("Отримали: \t\t\t"),writeln(R), nl.

% 3 Запит
:- write("Запит 3 ."), writeln("Знайти клієнтів, які в період з 2017 по 2018 звертались за послугою з відстрочення виплати кредиту"),
	writeln("та ніколи не звертались за послугою зменшення ставок по кредиту").
:- writeln("Бажаний результат: ").
:- task03(2017,2018,R), write("Отримали: \t\t    "),writeln(R), nl.

% 4 Запит
:- write("Запит 4 ."), writeln("Середня ціна послуг").
:- writeln("Бажаний результат: 1620").
:- task04(R), write("Отримали: \t\t    "),writeln(R), nl.

% 5 Запит
:- write("Запит 5 ."), writeln("Середній вік клієнтів").
:- writeln("Бажаний результат:     27").
:- task05(R), write("Отримали: \t\t\t"),writeln(R), nl.

% 6 Запит
:- write("Запит 6 ."), writeln("Знайти адвокатів (прізвище та ім’я), які надають хоч одну послугу, з тих які надає заданий адвоката. ").
:- writeln("Бажаний результат: (gurin, vladyslav),  (ignatenko, igor),  (kachan, artem)").
:- task06(gudko,kostiantyn,R), write("Отримали: \t\t\t"),writeln(R), nl.

% 7 Запит
:- write("Запит 7 ."), writeln("Знайти адвокатів (прізвище та ім’я), які надають тільки послуги заданого адвоката і ніякі інші.").
:- writeln("Бажаний результат:").
% :- task05(R), write("Отримали: \t\t\t"),writeln(R), nl.

% 8 Запит
:- write("Запит 8 ."), writeln("Знайти адвокатів (прізвище та ім’я), які надають усі ті послуги, що і послуги заданого адвоката,"),
	writeln("і можуть надавати ще якісь, які не надає цей адвокат.").
:- writeln("Бажаний результат: (gurin, vladyslav),  (shulga, mykhailo)").
:- task08(mytko,grigoriy,R), write("Отримали: \t\t\t"),writeln(R), nl.

% 8 Запит
:- write("Запит 9 ."), writeln("Знайти адвокатів (прізвище та ім’я), які надають в точності такі самі послуги як послуги заданого адвоката.").
:- writeln("Бажаний результат:").
% :- task05(R), write("Отримали: \t\t\t"),writeln(R), nl.
