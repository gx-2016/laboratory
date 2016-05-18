package cn.edu.njupt.dao;

import cn.edu.njupt.model.PersonPage;
import cn.edu.njupt.model.PersonPageWithBLOBs;

public interface PersonPageMapper {
    int deleteByPrimaryKey(Integer personpageid);

    int insert(PersonPageWithBLOBs record);

    int insertSelective(PersonPageWithBLOBs record);

    PersonPageWithBLOBs selectByPrimaryKey(Integer personpageid);

    int updateByPrimaryKeySelective(PersonPageWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(PersonPageWithBLOBs record);

    int updateByPrimaryKey(PersonPage record);

	PersonPageWithBLOBs getPersonalPageByUserId(Integer userid);
}