package com.vm.elk.service;

import com.vm.elk.model.MsgDTO;
import com.vm.elk.model.MsgVO;

import java.util.List;

public interface MsgService {

    List<MsgDTO> getList(MsgDTO msgDTO);

    public void addMsg(MsgVO msgVO) throws Exception;


}
