package kimmyeonghoe.cloth.admin.cloth.service;

import java.util.List;

import kimmyeonghoe.cloth.admin.cloth.domain.Cloth;

public interface ClothService {
	List<Cloth> getCloths();
	boolean addCloth(Cloth cloth);
	boolean fixCloth(Cloth cloth);
	boolean delCloth(int clothNum);
	Cloth findCloth(int clothNum);
}
