package DiamonShop.Service;

import java.util.List;

import org.springframework.stereotype.Service;

import DiamonShop.Dto.ProductsDto;

@Service
public interface IProductService {
	public ProductsDto GetProductByID(long id);
	public List<ProductsDto> GetProductByCategoryID(int id);
}
