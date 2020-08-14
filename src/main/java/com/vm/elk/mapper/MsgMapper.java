package com.vm.elk.mapper;

import com.vm.elk.model.MsgVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface MsgMapper {

    void addMsg(MsgVO msgVO);
}
