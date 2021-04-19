select `tieziid`,`createtime`,`bankuai`,`neirong` ,`xuexiao`,t_book.nickname
from t_book,t_user
where t_book.id = t_user.id and t_book.tieziid=33
order by t_book.tieziid desc 

-- ,`t_book.biaoti`,`t_book.nickname`,`t_book.createtime`,`t_book.bankuai`,`t_book.neirong` ,`t_user.xuexiao`