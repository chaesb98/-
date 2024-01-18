package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.ConsultationVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageDTO;
import org.zerock.service.ConsultationService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/consultation/*")
@AllArgsConstructor
public class ConsultaionController {

	private ConsultationService service;
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
		log.info("list 처리가 이루어집니다!" + cri);
		model.addAttribute("list", service.getList(cri));
		
		int total = service.getTotal(cri);
		log.info("전체 데이터 수량 = " + total);
		model.addAttribute("pageMaker", new PageDTO(cri, total));		
	}	
	
	// Page238 게시물의 등록 작업은 POST 방식으로 처리하지만,
	// 화면에서 입력을 받아야 하므로 GET 방식으로 입력 페이지를 볼 수 있도록
	// BoardController에 register() 메서드를 추가합니다.
	// 이때, register() 메서드는 입력 페이지를 보여주는 역할만을 하기 때문에
	// 별도의 처리가 필요하지 않습니다.
	@GetMapping("/register")
	public void register() {
		
	}	
	
	// register() 메서드는 조금 다르게 String을 리턴 타입으로 지정하고,
	// RedirectAttributes 를 파라미터로 지정합니다. 이것은 등록 작업(register)이 끝난 후
	// 다시 목록 화면으로 이동하기 위함인데, 추가적으로 새롭게 등록된 게시물의 번호를 같이 전달하기 위해서
	// RedirectAttributes를 이용합니다. 리턴 시에는 'redirect:' 접두어를 사용하는데
	// 이를 이용하면 스프링 MVC가 내부적으로 response.sendRedirect()를 처리해 주기 때문에 편리합니다.
	@PostMapping("/register")
	public String register(ConsultationVO board, RedirectAttributes rttr) {
		log.info("글 등록 처리를 합니다!" + board);
		service.register(board);
		
		// addFlashAttribute() 메서드는 일회성으로만 데이터를 전달하기 때문에
		// addFlashAttribute() 메서드로 보관된 데이터는 단 한 번만 사용할 수 있게 
		// 보관됩니다.
		rttr.addFlashAttribute("result", board.getConbno());		
		
		return "redirect:/consultation/list";		
	}	
	
	@GetMapping({"/get", "/modify"})
	public void get(@RequestParam("conbno") Long conbno, @ModelAttribute("cri") Criteria cri, Model model) {
		log.info("/get or modify");
		model.addAttribute("board", service.get(conbno));
	}
	
	@PostMapping("/modify")
	public String modify(ConsultationVO board, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("글수정 처리가 되었습니다! ==> " + board);
		
		if(service.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}
	
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/consultation/list";
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("conbno") Long conbno,  @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("글삭제 처리가 되었습니다! ==> " + conbno);		
		if(service.remove(conbno)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		
		return "redirect:/consultation/list";
	}	
}

