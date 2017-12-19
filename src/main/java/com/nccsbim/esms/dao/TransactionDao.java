package com.nccsbim.esms.dao;

import com.nccsbim.esms.model.Transaction;
import org.joda.time.LocalDate;

import java.util.List;

/**
 * Created by Rabin on 8/14/2015.
 */
public interface TransactionDao {

    Transaction findById(int id);

    void saveTranscation(Transaction transaction);

    List<Transaction> findAllTranscationOfGivenDate(LocalDate date);

}
