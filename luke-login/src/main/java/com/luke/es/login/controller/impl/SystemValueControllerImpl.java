package com.luke.es.login.controller.impl;

import com.luke.es.global.BController;
import com.luke.es.login.controller.ISystemValueController;
import com.luke.es.login.service.ISystemValueService;
import com.luke.es.md.vo.login.systemValue.DTOSystemValue;
import com.luke.es.md.vo.login.systemValue.VOSystemValueTree;
import com.luke.es.tool.controller.ActResult;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@RestController
public class SystemValueControllerImpl extends BController implements  ISystemValueController {

    @Resource
    ISystemValueService iSystemValueService ;

    public ActResult findAll(HttpServletRequest request, HttpServletResponse response, ActResult actResult, DTOSystemValue dtoSystemValue, BindingResult bindingResult) throws Exception {
        List<VOSystemValueTree> lstVoSystemValueTrees = iSystemValueService.findAll4Tree(dtoSystemValue) ;
        actResult.setRt(lstVoSystemValueTrees);
        return actResult;
    }

    public ActResult delSystemValue(HttpServletRequest request, HttpServletResponse response, ActResult actResult, DTOSystemValue dtoSystemValue, BindingResult bindingResult) throws Exception {
        iSystemValueService.delSystemValue(dtoSystemValue) ;
        return actResult.ok();
    }

    public ActResult updateSystemValue(HttpServletRequest request, HttpServletResponse response, ActResult actResult, DTOSystemValue dtoSystemValue, BindingResult bindingResult) throws Exception {
        iSystemValueService.updateSystemValue(dtoSystemValue) ;
        return actResult.ok("系统变量不能修改，只能添加，如果实在需要修改请联系管理员");
    }

    public ActResult saveSystemValue(HttpServletRequest request, HttpServletResponse response, ActResult actResult, DTOSystemValue dtoSystemValue, BindingResult bindingResult) throws Exception {
        iSystemValueService.saveSystemValue(dtoSystemValue) ;
        return actResult.ok();
    }
}
