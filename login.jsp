package com.iot.test;

import java.math.BigDecimal;

import org.junit.Test;

import com.iot.dao.AccountDao;
import com.iot.dao.impl.AccountDaoImpl;
import com.iot.entity.Account;
import com.iot.entity.Account1;

public class AccountTest {

//添加账号信息
	@Test
	public void testAddAccount(){
		AccountDao accountDao = new AccountDaoImpl();
		Account account = new Account();
		account.setAccountNo("444");
		account.setBalance(BigDecimal.valueOf(1200));
		accountDao.addAccount(account);
	}
	//账号减少金额
	@Test
	public void testAccountSubstract(){
		AccountDao accountDao = new AccountDaoImpl();	
		accountDao.accountSubstract(BigDecimal.valueOf(100), 1);
	}
	//账号减少金额
	@Test
	public void testAccountSubstract1(){
		AccountDao accountDao = new AccountDaoImpl();	
		accountDao.accountSubstract1(BigDecimal.valueOf(100), 1);
	}

	//添加账号信息1
		@Test
		public void testAddAccount1(){
			AccountDao accountDao = new AccountDaoImpl();
			Account1 account1 = new Account1();
			account1.setAccountNo("666");
			account1.setBalance(BigDecimal.valueOf(1200));
			accountDao.addAccount1(account1);
		}
		//账号减少金额
		@Test
		public void testAccountSubstract2(){
			AccountDao accountDao = new AccountDaoImpl();	
			Account1 account1=accountDao.accountSubstract2(BigDecimal.valueOf(100), 1);
			System.out.println("version = "+account1.getVersion());
		}
}
