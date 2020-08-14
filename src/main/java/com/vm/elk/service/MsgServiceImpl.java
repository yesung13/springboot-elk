package com.vm.elk.service;

import com.vm.elk.mapper.MsgMapper;
import com.vm.elk.model.MsgVO;
import org.springframework.stereotype.Service;

@Service
public class MsgServiceImpl implements MsgService {

    private final MsgMapper mapper;
    public MsgServiceImpl(MsgMapper mapper){
        this.mapper = mapper;
    }


    @Override
    public void addMsg(MsgVO msgVO) {
        mapper.addMsg(msgVO);
    }
}
