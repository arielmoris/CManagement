//package com.cms.service.impl;
//
//import java.util.ArrayList;
//import java.util.Date;
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import com.google.common.collect.Lists;
//import com.portal.dao.AgentDao;
//import com.portal.dao.HelperDao;
//import com.portal.dao.UserDao;
//import com.portal.dto.Account;
//import com.portal.dto.DataTableDto;
//import com.portal.entity.Agent;
//import com.portal.entity.User;
//import com.portal.service.AccountService;
//
//@Service(value="accountService")
//public class AccountServiceImpl implements AccountService{
//	
//	private UserDao userDao;
//	private AgentDao agentDao;
//	private HelperDao helperDao;
//	
//	@Autowired
//	public AccountServiceImpl(UserDao userDao, AgentDao agentDao, HelperDao helperDao){
//		this.userDao = userDao;
//		this.agentDao = agentDao;
//		this.helperDao = helperDao;
//		
//	}
//	
//	@Override
//	@Transactional
//	public Account findById(String userId) {
//		User user = userDao.findByUserId(userId);
//		Account account = null;
//		if(user != null){
//			account = new Account(user);
//		}
//		return account;
//	}
//	
//	@Override
//	@Transactional
//	public void saveOrUpdateAccount(Account account) {
//		User user = userDao.findByUserId(account.getUsername());
//		if(user != null){
//			user.setAllowCredit(account.getAllowCredit()==null?false:account.getAllowCredit());
//			user.setAllowEdit(account.getAllowEdit()==null?false:account.getAllowEdit());
//			user.setAllowReport(account.getAllowReport()==null?false:account.getAllowReport());
//			user.setAllowSecurity(account.getAllowSecurity()==null?false:account.getAllowSecurity());
//			user.setIsSuperUser(account.getIsSuperUser()==null?false:account.getIsSuperUser());
//			user.setAllowDevice(account.getAllowDevice()==null?false:account.getAllowDevice());
//			user.setFullName(account.getOwnerName());
//			user.setMobileNo(account.getContactNumber());			
//			user.setPassword(account.getPassword());
//			user.setStatus(account.getStatus());
//			user.setIsLogged(account.getIsLogged());
//		}else{
//			Agent agent = agentDao.findById(account.getShopId());
//			user = new User();
//			user.setUserId(account.getUsername());
//			user.setAgent(agent);
//			user.setPartnerId(agent.getPartnerId());
//			user.setRegisterDate(new Date());
//			user.setStatus('A');
//			user.setAllowEvent(false);
//			user.setAllowNotice(false);
//			user.setAllowCredit(account.getAllowCredit());
//			user.setAllowEdit(account.getAllowEdit());
//			user.setAllowDevice(account.getAllowDevice());
//			user.setAllowReport(account.getAllowReport());
//			user.setAllowSecurity(account.getAllowSecurity());
//			user.setIsSuperUser(account.getIsSuperUser());
//			user.setFullName(account.getOwnerName());
//			user.setMobileNo(account.getContactNumber());
//			user.setPassword(encryptPassword(account.getPassword()));
//			user.setIsLogged(false);
//		}
//		userDao.save(user);
//	}
//
//	@Override
//	@Transactional
//	public List<Account> findAllByShopId(int shopId) {
//		List<Account> accounts = new ArrayList<>();
//		try {
//			List<User> users = userDao.findAllByAgentId(shopId);
//			accounts = Lists.transform(users, Account.fromPlayer());
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return accounts;
//	}
//
//	@Override
//	public String encryptPassword(String password) {
//		return (String) helperDao.encryptdecrypt(password);
//	}
//
//	@Override
//	@Transactional
//	public List<Account> findByAgentIdWithPagingOrderbyAndFilter(int agentId, DataTableDto dataTableDto) {
//		List<Account> accounts = new ArrayList<>();
//		try {
//			List<User> users = userDao.findByAgentIdWithPagingOrderbyAndFilter(agentId, dataTableDto.getStart(), dataTableDto.getSize(), dataTableDto.getOrdering(), dataTableDto.getSearchValue());
//			accounts = Lists.transform(users, Account.fromPlayer());
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return accounts;
//	}
//	
//	@Override
//	@Transactional
//	public DataTableDto processDataTable(int agentId, DataTableDto dataTableDto){
//		try {
//			List<Account> accounts = this.findByAgentIdWithPagingOrderbyAndFilter(agentId, dataTableDto);
//			long totalSize = userDao.countByFilter(agentId, dataTableDto.getSearchValue());
//			dataTableDto.setData(accounts);
//			dataTableDto.setRecordsFiltered(totalSize);
//			dataTableDto.setRecordsTotal(totalSize);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return dataTableDto;
//	}
//
//	@Override
//	public Account findByIdAndShopId(String userId, int shopId) {
//		User user = userDao.findByUserIdAndAgentId(userId, shopId);
//		Account account = null;
//		if(user != null){
//			account = new Account(user);
//		}
//		return account;
//	}	
//	
//	@Override
//	public com.portal.dto.User findUserByIdAndShopId(String userId, int shopId) {
//		User user = userDao.findByUserIdAndAgentId(userId, shopId);
//		com.portal.dto.User userDto = null;
//		if(user != null){
//			userDto = new com.portal.dto.User(user);
//		}
//		return userDto;
//	}
//}
