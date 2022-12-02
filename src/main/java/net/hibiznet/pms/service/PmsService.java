package net.hibiznet.pms.service;

import java.util.List;

import net.hibiznet.pms.vo.PmsVO;

public interface PmsService {
	
	public List<PmsVO> selectListPms(PmsVO pmsVO) throws Exception;
	
	public PmsVO selectOnePms(PmsVO pmsVO) throws Exception;
	
	public void savePms(PmsVO pmsVO) throws Exception;
	
	public void updatePms(PmsVO pmsVO) throws Exception;
	
	public void deleteOnePms(PmsVO pmsVO) throws Exception;

}
