% клієнт(Код клієнта, ПІБ, Дата Народження, Адреса проживання, Номера телефонів (від 1 до 2))
client(ck, pib(petrenko, vasyl, ivanovych), birthday(12,may,1984), address(misto,vul,bud,index),[1..2]).
% адвокат(Код адвоката, ПІБ, Спеціалізація, Номера телефонів (від 1 до 2), Робочі дні) 
lawyer(lk, pib(surname,name,midname),specialization,[1..2],[pn,vt,pt,sb]).
% послуга(Код послуги, Назва Послуги, Ціна(Нормальна, Звичайна))
service(sk1,service_name,price).
% Досьє(Код Досьє, Статус(Відкрита / Закрита / Закрита-Відкрита), Дата-відкриття, Дата-закриття, Оплачено(True|False), Код Клієнта)
dossier(dk,zakryta,open_date(11,march,2019),close_date(31,june,2020),true,ck).
% запис(Код Запису, Дата-Запису, Час-Запису, Код Клієнта, Код Адвоката, Код Досьє)
appointment(ak,app_date(23,july,2020),time(12:00),ck,lk,dk).

% звязки
% адвокат-послуга(Код Адвоката, Код Послуги)
lawyerService(l1,s1).
% запис-послуга (Код Запису, Код Послуги)
appointService(ak,sk1).
appointService(ak,sk2).



% запити
%
%
% оператори
%
