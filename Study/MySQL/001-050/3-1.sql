            select huifushijian,t_user.nickname,huifuneirong,huifu.id,huifuid,bankuai,t_book.tieziid
            from t_book,huifu,t_user
            where t_book.id=huifu.id=t_user.id and huifu.tieziid=t_book.tieziid and huifu.tieziid=32
            order by t_book.tieziid desc;