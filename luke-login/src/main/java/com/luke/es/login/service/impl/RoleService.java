package com.luke.es.login.service.impl;

import com.luke.es.login.dao.IRoleDao;
import com.luke.es.login.service.IRoleService;
import com.luke.es.md.TU_Item;
import com.luke.es.md.TU_Role;
import com.luke.es.md.vo.login.role.UIVOCheckItems4Tree;
import com.luke.es.md.vo.login.role.UIVORole;
import com.luke.es.md.vo.login.role.VOFindRole;
import com.luke.es.tool.model._M;
import com.luke.es.tool.tl.LK;
import com.luke.es.tool.vo.Page;
import com.luke.es.tool.vo.VOutUser;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class RoleService implements IRoleService {

    @Resource
    IRoleDao roleDao  ;

    public List<UIVORole> findAll(VOFindRole vo, Page page) throws Exception {
        List<UIVORole> roles = this.roleDao.findAllUnion(vo,page) ;
        return roles;
    }

    @Transactional
    public void addModel(VOutUser currentUser, UIVORole vo) throws Exception {
        TU_Role role = new TU_Role() ;
        BeanUtils.copyProperties(vo,role);
        this.roleDao.save(role) ;
    }

    public List<UIVOCheckItems4Tree> findCheckedItems(VOFindRole vo) throws Exception {
        /**所有功能权限 */
        List<UIVOCheckItems4Tree> rt = this.roleDao.findAllItems4Tree() ;
        List<UIVOCheckItems4Tree> jg = new ArrayList<UIVOCheckItems4Tree>(rt.size()) ;

        if(vo.getId()==null) return this.dg(jg,rt,0l) ;
        /**查询所有按钮*/
        TU_Role role = this.roleDao.get(TU_Role.class,vo.getId()) ;
        List<TU_Item> lstBtnItems = this.roleDao.findRoleBtn(vo.getId()) ;
        Map<Long,_M> mapBtnItems = LK.LstPojoToMap(lstBtnItems) ;

        for(Long itemId:mapBtnItems.keySet()){
            for(UIVOCheckItems4Tree node:rt){
                if(node.getId().longValue()==itemId.longValue()){
                    node.setChecked(true);
                    break ;
                }
            }
        }
        return this.dg(jg,rt,0l) ;
    }

    private List<UIVOCheckItems4Tree> dg (List<UIVOCheckItems4Tree> jg ,List<UIVOCheckItems4Tree> data,Long fid){
        if(jg==null)
            jg = new ArrayList<UIVOCheckItems4Tree>(data.size()) ;
        for(UIVOCheckItems4Tree ele :data){
            if(ele.getFid().longValue()==fid.longValue()){
                jg.add(ele) ;
                ele.setChildren(dg(ele.getChildren(),data,ele.getId())) ;
            }
        }
        return jg ;
    }

    @Transactional
    public void updateModel(VOutUser currentUser, UIVORole vo) throws Exception {
        TU_Role role = this.roleDao.get(TU_Role.class,vo.getId()) ;
        BeanUtils.copyProperties(vo,role);
    }

    @Transactional
    public void delModel(VOutUser currentUser, Long id) throws Exception {
        TU_Role role = this.roleDao.get(TU_Role.class,id) ;
        role.set_isDel(true);
    }
}
