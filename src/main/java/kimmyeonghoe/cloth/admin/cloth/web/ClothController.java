package kimmyeonghoe.cloth.admin.cloth.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kimmyeonghoe.cloth.admin.cloth.domain.Cloth;
import kimmyeonghoe.cloth.admin.cloth.service.ClothService;

@RestController
@RequestMapping("admin/cloth")
public class ClothController{
	@Autowired private ClothService clothService;
	
	@GetMapping("/list")
	public List<Cloth> getCloth() {
		return clothService.getCloths();
	}
	
	@PostMapping("/add")
	public boolean addCloth(@RequestBody Cloth cloth) {
		return clothService.addCloth(cloth);
	}
	
	@PutMapping("/fix") 
	public boolean fixCloth(@RequestBody Cloth cloth) {
		return clothService.fixCloth(cloth);
	}
	
	@DeleteMapping("/del/{clothNum}")
	public boolean delCloth(@PathVariable int clothNum) {
		return clothService.delCloth(clothNum);
	}

	@GetMapping("/find")
	public Cloth findeCloth(@PathVariable int clothNum) {
		return clothService.findCloth(clothNum);
	}
}
