package com.nccsbim.esms.service;

import com.nccsbim.esms.dao.TransactionDao;
import com.nccsbim.esms.dao.TransactionDaoImpl;
import com.nccsbim.esms.dao.UserDao;
import com.nccsbim.esms.model.Transaction;
import org.joda.time.LocalDate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by Rabin on 8/14/2015.
 */

@Service("transactionService")
@Transactional
public class TransactionServiceImpl implements TransactionService {
    @Autowired
    private TransactionDao transactionDao;
    @Autowired
    private UserDao userDao;

    @Override
    public Transaction findById(int id) {
        return transactionDao.findById(id);
    }

    @Override
    public void saveTransaction(Transaction transaction) {
        transactionDao.saveTranscation(transaction);
    }

    @Override
    public List<Transaction> findAllTransactionByGivenDate(LocalDate date) {
       return  transactionDao.findAllTranscationOfGivenDate(date);
    }
}
