package com.vm.elk.model;

import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;
import java.util.Date;

@Getter
@NoArgsConstructor
public class MsgDTO {
    private String message;
    private int messageNum;
    private Timestamp createDt;
}
