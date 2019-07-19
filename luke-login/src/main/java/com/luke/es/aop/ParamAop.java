package com.luke.es.aop;

import com.luke.es.tool.controller.ActResult;
import com.luke.es.tool.exception.AppException;
import com.luke.es.tool.tl.Assertion;
import com.luke.es.tool.tl.LK;
import com.luke.es.tool.vo.Page;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.List;

@Component
@Aspect
public class ParamAop {
    private static final Logger log = LoggerFactory.getLogger(ParamAop.class) ;

    @Pointcut("execution(* com.luke.es.*.controller.impl.*.*(..))")
    private void point() {
    }

    @Around("point()")
    public Object around (ProceedingJoinPoint jp) throws Throwable{
        HttpServletRequest request = null;
        HttpServletResponse response = null ;
        ActResult actResult = null ;
        BindingResult bindingResult = null ;
        Page page = null ;

        for (Object obj:jp.getArgs() ) {
            if(obj instanceof HttpServletRequest)
                request = (HttpServletRequest)obj ;
            if(obj instanceof BindingResult )
                bindingResult = (BindingResult)obj ;
            if(obj instanceof ActResult){
                actResult = (ActResult)obj ;
            }
            if(obj instanceof Page){
                page = (Page) obj ;
            }

        }
        if(actResult!=null&&request!=null){
            actResult.setUrl(request.getRequestURL().toString());
        }
        if(bindingResult!=null&&bindingResult.hasErrors()){
            actResult.setSuccess(false);
            actResult.setMsg(bindingResult.getAllErrors().get(0).getDefaultMessage());
            actResult.setError(AppException.create("参数验证失败"));
            String errormsg = "" ;
            for(ObjectError error :bindingResult.getAllErrors()){
                errormsg+=error.getDefaultMessage()+";" ;
            }
            Assertion.Error(errormsg);
        }
        Object obj = jp.proceed(jp.getArgs()) ;
        if(actResult!=null&&(actResult.getRt() instanceof List) && page == null ){
            actResult.setCount(((List)actResult.getRt()).size()+0l);
        }
        if(page!=null&&actResult!=null){
            actResult.setCount(page.getCount());
        }
        return obj ;
    }
}
