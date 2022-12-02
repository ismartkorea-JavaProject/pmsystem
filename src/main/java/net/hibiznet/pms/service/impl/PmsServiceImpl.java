package net.hibiznet.pms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;
import org.springframework.stereotype.Service;

import net.hibiznet.pms.service.PmsService;
import net.hibiznet.pms.vo.PmsVO;

@Service("PmsService")
public class PmsServiceImpl extends EgovAbstractServiceImpl implements PmsService {

	@Resource(name = "PmsDAO")
	private PmsDAO pmsDAO;
	
	public List<PmsVO> selectListPms(PmsVO pmsVO) throws Exception {

		List<PmsVO> result = pmsDAO.selectListPms(pmsVO);
		
		return result;
	}
	
	public PmsVO selectOnePms(PmsVO pmsVO) throws Exception {

		return pmsDAO.selectOnePms(pmsVO);
	}	
	
	public void savePms(PmsVO pmsVO) throws Exception {
		pmsDAO.savePms(pmsVO);
	}
	
	public void updatePms(PmsVO pmsVO) throws Exception {
		pmsDAO.updatePms(pmsVO);
	}
	
	public void deleteOnePms(PmsVO pmsVO) throws Exception {
		pmsDAO.deleteOnePms(pmsVO);
	}
}
