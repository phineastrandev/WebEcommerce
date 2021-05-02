package DiamonShop.Service;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.UserDao;
import DiamonShop.Entity.Users;

@Service
public class UserServiceImpl implements IUserService {
	@Autowired
	UserDao userDao;

	public int AddAccount(Users user) {
		
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
		return userDao.AddUser(user);
	}

	public Users CheckAccount(Users user) {
		String pass = user.getPassword();
		user = userDao.GetUserByAcc(user);
		if(user !=null) {
			if(BCrypt.checkpw(pass, user.getPassword())) {
				return user;
			} else {
				return null;
			}
					}
		return null;
	}

}
