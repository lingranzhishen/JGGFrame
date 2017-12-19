package com.nccsbim.esms.dao;

import com.nccsbim.esms.model.Transaction;
import org.hibernate.Criteria;
import org.joda.time.LocalDate;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Rabin on 8/14/2015.
 */
@Repository("TransactionDao")
public class TransactionDaoImpl extends AbstractDao<Integer, Transaction> implements TransactionDao {
    @Override
    public Transaction findById(int id) {
        return getByKey(id);
    }

    @Override
    public void saveTranscation(Transaction transaction) {
        persist(transaction);
    }

    @Override
    public List<Transaction> findAllTranscationOfGivenDate(LocalDate date) {
        Criteria criteria = createEntityCriteria();
        return (List<Transaction>) criteria.list();
    }
}
