package net.hibiznet.pms.web;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.hibiznet.pms.service.PmsService;
import net.hibiznet.pms.vo.PmsVO;

@Controller
public class PmsMainController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(PmsMainController.class);

	
    @Resource(name = "PmsService")
    private PmsService pmsService;
    
    
    @RequestMapping("/pms/selectListPms.do")
    public String selectListPms(@ModelAttribute("searchVO") PmsVO pmsVO, ModelMap model) throws Exception {

    	ArrayList<PmsVO> resultList = (ArrayList<PmsVO>) pmsService.selectListPms(pmsVO);	
    	
    	model.addAttribute("resultList", resultList);

    	return "pms/pmsList";    	
    	
    }
    
    @RequestMapping(value="/pms/selectOnePms.do", method=RequestMethod.GET)
    public String selectOnePms(HttpServletRequest req, PmsVO pmsVO, ModelMap model) throws Exception {

    	String no = req.getParameter("no") !=null ? req.getParameter("no") : "";
    	
    	pmsVO.setNo(no);
    	
    	PmsVO result = pmsService.selectOnePms(pmsVO);
    	
    	model.addAttribute("result", result);

    	return "pms/pmsDetail"; 	
    	
    }
    
    @RequestMapping("/pms/savePmsView.do")
    public String savePmsView(ModelMap model) throws Exception {

    	return "pms/pmsSave";    	
    	
    }     
    
    @RequestMapping("/pms/savePms.do")
    public String savePms(@ModelAttribute("pms") PmsVO pmsVO, ModelMap model) throws Exception {
    	
    	LOGGER.debug("### pms : " + pmsVO + " ###");
    	
    	// 저장 처리.
    	pmsService.savePms(pmsVO);
    	// 리스트 조회.
    	ArrayList<PmsVO> resultList = (ArrayList<PmsVO>) pmsService.selectListPms(pmsVO);	
    	
    	model.addAttribute("result", "OK");
    	model.addAttribute("resultList", resultList);    	

    	return "pms/pmsList";
    	
    } 
    
    @RequestMapping(value="/pms/updatePmsView.do", method=RequestMethod.GET)
    public String updatePmsView(HttpServletRequest req, PmsVO pmsVO, ModelMap model) throws Exception {
    	
    	String no = req.getParameter("no") !=null ? req.getParameter("no") : "";
    	
    	pmsVO.setNo(no);    	

    	PmsVO result = pmsService.selectOnePms(pmsVO);
    	
    	model.addAttribute("result", result);    	
    	
    	
    	return "pms/pmsUpdate";    	
    	
    }    
    
    @RequestMapping("/pms/updatePms.do")
    public String updatePms(@ModelAttribute("pms") PmsVO pmsVO, ModelMap model) throws Exception {

    	// 저장처리.
    	pmsService.updatePms(pmsVO);
    	// 조회처리.
    	PmsVO result = pmsService.selectOnePms(pmsVO);
    	
    	model.addAttribute("result", result);

    	return "pms/pmsDetail";
    	
    }
    
    @RequestMapping(value = "/pms/deleteOnePms.do", method=RequestMethod.GET)
    public String deleteOnePms(HttpServletRequest req, PmsVO pmsVO, ModelMap model) throws Exception {

    	String no = req.getParameter("no") !=null ? req.getParameter("no") : "";
    	
    	pmsVO.setNo(no);    	
    	// 삭제 처리.
    	pmsService.deleteOnePms(pmsVO);	
    	// 조회.
    	ArrayList<PmsVO> resultList = (ArrayList<PmsVO>) pmsService.selectListPms(pmsVO);	
    	
    	model.addAttribute("resultList", resultList);

    	return "pms/pmsList";  	
    	
    }    
    
}
