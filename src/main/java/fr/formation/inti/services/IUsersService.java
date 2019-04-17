package fr.formation.inti.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import fr.formation.inti.dao.IGenericDao;
import fr.formation.inti.entities.Users;

public interface IUsersService {

	void setDao(IGenericDao<Users> daoToSet);

	List<Users> getUsers();

	Users getUser(Long id);

	void addUser(Users user);

	void updateUser(Users user);

	void deleteUser(Long id);

}