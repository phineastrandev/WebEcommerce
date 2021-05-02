package DiamonShop.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.ProductsDao;
import DiamonShop.Dto.ProductsDto;
@Service
public class CategoryServiceImpl implements ICategoryService{

	@Autowired
	ProductsDao productsDao;
	public List<ProductsDto> GetAllProductsByID(int id) {
		return productsDao.GetAllProductsByID(id);
	}
	public List<ProductsDto> GetDataProductsPaninate(int id,int start, int totalPage) {
		List<ProductsDto> products = productsDao.GetDataProductsPaninate(id,start, totalPage);
		return products;
	}

	

}
