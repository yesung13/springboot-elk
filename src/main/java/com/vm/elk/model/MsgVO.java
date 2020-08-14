package com.vm.elk.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

@Getter
@Setter
@NoArgsConstructor
@Alias("MsgVO")
public class MsgVO {
    private String msg;
    private int msgNum;

    public MsgVO(String msg, int msgNum) {
        this.msg = msg;
        this.msgNum = msgNum;
    }
}


