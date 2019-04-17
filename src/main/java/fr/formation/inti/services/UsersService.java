package fr.formation.inti.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.formation.inti.dao.IGenericDao;
import fr.formation.inti.entities.Users;

@Service
@Transactional
public class UsersService implements IUsersService {
	
	IGenericDao< Users > dao;
	 
	   /* (non-Javadoc)
	 * @see fr.formation.inti.services.IUsersService#setDao(fr.formation.inti.dao.IGenericDao)
	 */
	@Override
	@Autowired
	   public void setDao( IGenericDao< Users > daoToSet ){
	      dao = daoToSet;
	      dao.setClazz( Users.class );
	   }
	   

		/* (non-Javadoc)
		 * @see fr.formation.inti.services.IUsersService#getUsers()
		 */
		@Override
		public List<Users> getUsers() {
			return dao.findAll();
		}


		/* (non-Javadoc)
		 * @see fr.formation.inti.services.IUsersService#getUsers(java.lang.Long)
		 */
		@Override
		public Users getUser(Long id ) {  
			return dao.findOne(id);
		}
		
		

		/* (non-Javadoc)
		 * @see fr.formation.inti.services.IUsersService#addUsers(fr.formation.inti.entities.Users)
		 */
		@Override
		public void addUser(Users user) {
			dao.create(user);
		}


		/* (non-Javadoc)
		 * @see fr.formation.inti.services.IUsersService#updateUsers(fr.formation.inti.entities.Users)
		 */
		@Override
		public void updateUser(Users user) {
			dao.update(user);
		}
		

		/* (non-Javadoc)
		 * @see fr.formation.inti.services.IUsersService#deleteUsers(java.lang.Long)
		 */
		@Override
		public void deleteUser(Long id) {
			Users user = dao.findOne(id);
			dao.delete(user);
		}

}
