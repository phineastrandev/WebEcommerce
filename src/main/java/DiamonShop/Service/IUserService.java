package DiamonShop.Service;

import org.springframework.stereotype.Service;

import DiamonShop.Entity.Users;

@Service
public interface IUserService {

	public int AddAccount(Users user);
	public Users CheckAccount(Users user);
}
