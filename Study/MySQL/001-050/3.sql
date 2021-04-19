                                select
                                `xuexiao`,`xue`,`bankuai`,`neirong` ,`xuexiao`,t_user.nickname,`biaoti`
                                from 
                                t_book,t_user
                                where 
                                t_book.id = t_user.id
                                and 
                                t_book.tieziid=${param.tieziid}
                                order by 
                                t_book.tieziid desc;