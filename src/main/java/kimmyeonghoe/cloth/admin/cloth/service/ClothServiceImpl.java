package kimmyeonghoe.cloth.admin.cloth.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kimmyeonghoe.cloth.admin.cloth.dao.ClothDao;
import kimmyeonghoe.cloth.admin.cloth.domain.Cloth;

@Service
public class ClothServiceImpl implements ClothService {
	@Autowired private ClothDao clothDao;
	
	@Override
	public List<Cloth> getCloths() {
		return clothDao.selectCloths();
	}

	@Override
	public boolean addCloth(Cloth cloth) {
		return clothDao.insertCloth(cloth) > 0;
	}

	@Override
	public boolean fixCloth(Cloth cloth) {
		return clothDao.updateCloth(cloth) > 0;
	}

	@Override
	public boolean delCloth(int clothNum) {
		return clothDao.deleteCloth(clothNum) > 0;
	}
	
	@Override
	public Cloth findCloth(int clothNum) {
		return clothDao.searchCloth(clothNum);
	}
}
