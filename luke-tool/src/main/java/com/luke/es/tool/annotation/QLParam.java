package com.luke.es.tool.annotation;


import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface QLParam {
    /**关系*/
    QLParam_GX gx() default QLParam_GX.Eq ;

    /**原属性*/
    String sx() default "" ;

    /**别名*/
    String bm() default "" ;

}
