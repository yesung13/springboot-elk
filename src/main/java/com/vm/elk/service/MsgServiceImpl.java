package com.vm.elk.service;

import com.vm.elk.mapper.MsgMapper;
import com.vm.elk.model.MsgDTO;
import com.vm.elk.model.MsgVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MsgServiceImpl implements MsgService {

    private final MsgMapper mapper;
    public MsgServiceImpl(MsgMapper mapper){
        this.mapper = mapper;
    }

    @Override
    public List<MsgDTO> getList(MsgDTO msgDTO) {
        return mapper.getList(msgDTO);
    }

    @Override
    public void addMsg(MsgVO msgVO) throws Exception {
        mapper.addMsg(msgVO);
    }
}
