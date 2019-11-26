package com.luke.es.md;

import com.luke.es.md.vo.login.user.UIFindVOUser;
import com.luke.es.tool.tl.LK;
import com.luke.es.tool.tl.LKMap;
import org.junit.Test;

import java.util.Date;

public class TestQL {

    @Test
    public void testDeclaredFields() throws Exception{
        String l = "From user u left join role r on u.roleId = r.id" ;
        UIFindVOUser user = new UIFindVOUser() ;
        user.setLoginName("admin");
        user.setBirthday_s(new Date().getTime());
        LKMap param = new LKMap() ;
        String ql = LK.QL_UnionParam(l,user,param) ;
        System.out.println(ql);
        System.out.println("param.size is "+param.size());
    }

}
