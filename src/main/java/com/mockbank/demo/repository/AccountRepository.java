package com.mockbank.demo.repository;

import com.mockbank.demo.entity.Account;

import java.util.Optional;

public interface AccountRepository {
    Optional<Account> findByAccountNumber(String accountNumber);

    Optional<Account> findByUserId(Long userId);

}
