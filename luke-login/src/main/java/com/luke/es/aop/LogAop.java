package com.luke.es.aop;

import com.luke.es.tool.tl.LK;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;

@Component
@Aspect
public class LogAop {
    private static final Logger log = LoggerFactory.getLogger(LogAop.class) ;

    @Pointcut("execution(* com.luke.es.*.controller.impl.*.*(..))")
    private void point() {
    }

    @Around("point()")
    public Object around (ProceedingJoinPoint jp) throws Throwable{
        HttpServletRequest request = null;
        for (Object obj:jp.getArgs() ) {
            if(obj instanceof HttpServletRequest){
                request = (HttpServletRequest)obj ;
                break ;
            }
        }
        Date start = new Date() ;
        if(log!=null && log.isDebugEnabled()){
            log.debug("===start is "+ LK.DateToStr(start,"yyyy-MM-dd HH:mm:ss SSS"));
            if(request!=null){
                log.debug("===uri is======="+request.getRequestURI());

                Cookie[] cokies = request.getCookies() ;
                if(cokies!=null) {
                    for (Cookie c : cokies) {
                        if (c.getName().equals("luke-shop-token")) {
                            log.debug("====token is:"+c.getValue());
                            break ;
                        }
                    }
                }

                log.debug("===params is ==="+LK.ObjToJsonStr(request.getParameterMap()));
            }
        }
        Object obj = jp.proceed(jp.getArgs()) ;
        Date end = new Date() ;
        if(log!=null&& log.isDebugEnabled()){
            log.debug("==========>:end time "+ LK.DateToStr(end,"yyyy-MM-dd HH:mm:ss SSS"));
            log.debug("==========>:time is "+(end.getTime()-start.getTime())+"\n\r");
        }
        return obj ;
    }
}
