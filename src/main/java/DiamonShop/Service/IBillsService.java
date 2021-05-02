package DiamonShop.Service;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import DiamonShop.Dto.CartDto;
import DiamonShop.Entity.Bills;

@Service
public interface IBillsService {

	public int AddBills(Bills bill);
	
	public void AddBillsDetail(HashMap<Long, CartDto> carts);
	
}
