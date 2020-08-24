package com.vm.elk.controller;

import com.vm.elk.model.MsgDTO;
import com.vm.elk.model.MsgVO;
import com.vm.elk.service.MsgService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Slf4j
@Controller
public class MainController {

    private final MsgService service;

    public MainController(MsgService service) {
        this.service = service;
    }

    @GetMapping("/")
    public String main() {
        return "main";
    }

    @GetMapping("/getList")
    @ResponseBody
    public ResponseEntity<List<MsgDTO>> getList() {

        List<MsgDTO> list = service.getList(new MsgDTO());

        try {
            if (list.size() > 0) {
                for (MsgDTO dto : list) {

                    log.info("[{} {} {}]", dto.getMessage(), dto.getMessageNum(), dto.getCreateDt());

                }
            }
            return new ResponseEntity<List<MsgDTO>>(list, HttpStatus.OK);

        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>(list, HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

    @PostMapping("/addMsg")
    @ResponseBody
    public ResponseEntity<MsgVO> addMsg(MsgVO msg) {
//        MsgVO msg = new MsgVO();
//        msg.setMsg("button clicked");
//        msg.setMsgNum(1);

        try {
            if (msg.getMsg() != null) {
                service.addMsg(msg);
                log.info("[button clicked]:{} {}",msg.getMsg(), msg.getMsgNum());
            }
            return new ResponseEntity<>(msg, HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>(msg, HttpStatus.GATEWAY_TIMEOUT);
        }
    }


}
