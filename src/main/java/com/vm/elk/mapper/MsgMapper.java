package com.vm.elk.mapper;

import com.vm.elk.model.MsgDTO;
import com.vm.elk.model.MsgVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface MsgMapper {

    List<MsgDTO> getList(MsgDTO msgDTO);

    void addMsg(MsgVO msgVO);


}
