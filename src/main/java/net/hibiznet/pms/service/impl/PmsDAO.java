package net.hibiznet.pms.service.impl;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.EgovAbstractMapper;
import org.springframework.stereotype.Repository;

import net.hibiznet.pms.vo.PmsVO;

@Repository("PmsDAO")
public class PmsDAO extends EgovAbstractMapper {
	
    public PmsVO selectOnePms(PmsVO pmsVO) throws Exception {
    	return (PmsVO)selectOne("PmsDAO.selectOnePms", pmsVO);
    }
    
    @SuppressWarnings("unchecked")
    public List<PmsVO> selectListPms(PmsVO pmsVO) throws Exception {
    	return (List<PmsVO>) list("PmsDAO.selectListPms", pmsVO);
    }    

    public void savePms(PmsVO pmsVO) throws Exception {
    	insert("PmsDAO.savePms", pmsVO);
    }    
    
    public void updatePms(PmsVO pmsVO) throws Exception {
    	update("PmsDAO.updatePms", pmsVO);
    } 
    
    public void deleteOnePms(PmsVO pmsVO) throws Exception {
    	delete("PmsDAO.deleteOnePms", pmsVO);
    }    
}
