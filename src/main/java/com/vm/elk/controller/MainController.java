package com.vm.elk.controller;

import com.vm.elk.model.MsgVO;
import com.vm.elk.service.MsgService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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

    @PostMapping("/addMsg")
    @ResponseBody
    public ResponseEntity<MsgVO> addMsg(MsgVO msg) {
//        MsgVO msg = new MsgVO();
//        msg.setMsg("button clicked");
//        msg.setMsgNum(1);

        try {
            if (msg.getMsg() != null) {
//                service.addMsg(msg);
                log.info("[button message]: {} => {}", msg.getMsg(), msg.getMsgNum());
            }
            return new ResponseEntity<>(msg, HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>(msg, HttpStatus.BAD_REQUEST);
        }
    }


}
