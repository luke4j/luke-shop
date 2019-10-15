package com.luke.es.goods.service;

import com.luke.es.md.vo.goods.dto.DTOType;
import com.luke.es.md.vo.goods.vo.VOType;

import java.util.List;

public interface ITypeService {
    void addModel(DTOType dto) throws Exception;

    void delModel(DTOType dto)throws Exception;

    void updateModel(DTOType dto)throws Exception;

    List<VOType> findAll4Tree(DTOType dto)throws Exception;
}
