package com.luke.es.login.service;

import com.luke.es.md.vo.login.systemValue.DTOSystemValue;
import com.luke.es.md.vo.login.systemValue.VOSystemValueTree;

import javax.transaction.Transactional;
import java.util.List;

public interface ISystemValueService {

    /**
     * 查询系统变量
     * @param dtoSystemValue
     * @return
     */
    List<VOSystemValueTree> findAll4Tree(DTOSystemValue dtoSystemValue) throws Exception;

    /**
     * 为弹出窗提供数据
     * @param dtoSystemValue
     * @return
     * @throws Exception
     */
    List<VOSystemValueTree> find4Alert(DTOSystemValue dtoSystemValue)throws Exception;

    /**
     * 删除系统变量
     * @param dtoSystemValue
     * @throws Exception
     */
    void delSystemValue(DTOSystemValue dtoSystemValue)throws Exception;

    /**
     * 保存系统变量
     * @param dtoSystemValue
     * @throws Exception
     */

    void saveSystemValue(DTOSystemValue dtoSystemValue)throws Exception;

    /**
     * 修改系统变量
     * @param dtoSystemValue
     * @throws Exception
     */
    void updateSystemValue(DTOSystemValue dtoSystemValue)throws Exception;


}
