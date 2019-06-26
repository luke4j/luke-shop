package com.luke.es.global;

import com.luke.es.tool.controller.ActResult;
import com.luke.es.tool.tl.LK;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.Date;

@ControllerAdvice
public class WebExceptionHandler {
    @ExceptionHandler(Throwable.class)
//    @ResponseBody
    public String handlerException(HttpServletRequest request, HttpServletResponse response, Model model, Throwable e){
        e.printStackTrace();
        ActResult actionResult = new ActResult() ;
        actionResult.setUrl(request.getRequestURL().toString());
        String msg = e.getMessage() ;
        if(LK.StrIsEmpty(msg))
            msg = e.getClass().toString() ;
        actionResult.setMsg(msg);
        actionResult.setError(e);
        actionResult.setSuccess(false);
        if(request.getRequestURL().toString().indexOf(".act")==-1){
            model.addAttribute("systime",new Date()) ;
            String localhost = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
            model.addAttribute("localhost",localhost) ;
            return "login" ;
        }else{
            try{
                response.setContentType("application/json;charset=UTF-8");
                response.setCharacterEncoding("UTF-8");
                PrintWriter pw = response.getWriter() ;
                pw.write(LK.ObjToJsonStr(actionResult));
                pw.flush(); ;
                pw.close();
            }catch (Exception ex){
                ex.printStackTrace();
            }
            return null ;
        }
    }
}
