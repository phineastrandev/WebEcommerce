package DiamonShop.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.ProductsDao;
import DiamonShop.Dto.ProductsDto;
@Service
public class ProductServiceImpl implements IProductService {

	@Autowired
	ProductsDao productsDao;
	public ProductsDto GetProductByID(long id) {
		// TODO Auto-generated method stub
		List<ProductsDto> list = productsDao.GetProductByID(id);
		return list.get(0);
	}
	public List<ProductsDto> GetProductByCategoryID(int id) {
		// TODO Auto-generated method stub
		return productsDao.GetAllProductsByID(id);
	}

}
