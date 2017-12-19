package com.nccsbim.esms.service;

import com.nccsbim.esms.model.Transaction;
import org.joda.time.LocalDate;

import java.util.List;

/**
 * Created by Rabin on 8/14/2015.
 */
public interface TransactionService {

    Transaction findById(int id);

    void saveTransaction(Transaction transaction);

    List<Transaction> findAllTransactionByGivenDate(LocalDate date);


}
