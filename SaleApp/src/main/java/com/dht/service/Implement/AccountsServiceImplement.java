package com.dht.service.Implement;

import com.dht.pojo.Account;
import com.dht.repository.IAccountsRepository;
import com.dht.service.IAccountsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

//@Service("userDetailsService")
@Service
public class AccountsServiceImplement implements IAccountsService {

    @Autowired
    private IAccountsRepository accountsRepository;

    @Override
    public List<Account> getAllAccount() {
        return this.accountsRepository.getAllAccount();
    }

    @Override
    public Account getAccountById(String id) {
        return this.accountsRepository.getAccountById(id);
    }

//    @Override
//    public Account getAccountByUsername(String username) {
//        return accountsRepository.getAccountByUsername(username);
//    }

    @Override
    public boolean deleteAccount(String accountId) {
        return this.accountsRepository.deleteAccount(accountId);
    }

    @Override
    public boolean addAccount(Account account) {
        return this.accountsRepository.addAccount(account);
    }

    @Override
    public boolean updateAccount(Account account) {
        return this.accountsRepository.updateAccount(account);
    }

//    @Override
//    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//        Account accounts = accountsRepository.getAccountByUsername(username);
//        if (accounts.getId() == null)
//            throw new UsernameNotFoundException("Không tồn tại!");
//        Account a = accounts;
//        Set<GrantedAuthority> authorities = new HashSet<>();
//        authorities.add(new SimpleGrantedAuthority(a.getRole().getRole()));
//        return new org.springframework.security.core.userdetails.User(
//                a.getUsername(), a.getPassword(), authorities);
//    }
}
