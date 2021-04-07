package kimmyeonghoe.cloth.admin.cloth.dao;

import java.util.List;

import kimmyeonghoe.cloth.admin.cloth.domain.Cloth;

public interface ClothDao {
	List<Cloth> selectCloths();
	int insertCloth(Cloth cloth);
	int updateCloth(Cloth cloth);
	int deleteCloth(int clothNum);
	Cloth searchCloth(int clothNum);
}
