% клієнт
client(ck, pib(petrenko, vasyl, ivanovych), birthday(12,may,1984), address(misto,vul,bud,index),[1..2]).
% адвокат
lawyer(lk, pib(surname,name,midname),specialization,[1..2],[pn,vt,pt,sb]).
% послуга
service(sk1,service_name,price).
% досьє, false - не оплачено, true - оплачено
dossier(dk,zakryta,open_date(11,march,2019),close_date(31,june,2020),true,ck).
% запис
appointment(ak,app_date(23,july,2020),time(12:00),ck,lk,dk).

% звязки
% адвокат-послуги(багато до багатьох)
lawyerService(l1,s1).
% запис-послуги(один до багатьох)
appointService(ak,sk1).
appointService(ak,sk2).



% запити
%
%
% оператори
%
