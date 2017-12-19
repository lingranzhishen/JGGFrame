package com.nccsbim.esms.model;


import org.hibernate.annotations.Type;
import org.joda.time.LocalDate;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;

/**
 * Created by Rabin on 8/14/2015.
 */
@Entity
@Table(name="TRANSCATION")
public class Transaction {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int transactionId;

    @Column(name = "user_id")
    private int userId;

    @DateTimeFormat(pattern = "dd/MM/yyyy")
    @Type(type="org.jadira.usertype.dateandtime.joda.PersistentLocalDate")
    private LocalDate transactionDate;

    private float citMonthly;
    private float taxMonthly;
    private float netSalary;
    private float salary;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Transaction that = (Transaction) o;

        if (transactionId != that.transactionId) return false;
        if (userId != that.userId) return false;
        if (Float.compare(that.citMonthly, citMonthly) != 0) return false;
        if (Float.compare(that.taxMonthly, taxMonthly) != 0) return false;
        if (Float.compare(that.netSalary, netSalary) != 0) return false;
        if (Float.compare(that.salary, salary) != 0) return false;
        return !(transactionDate != null ? !transactionDate.equals(that.transactionDate) : that.transactionDate != null);

    }

    @Override
    public int hashCode() {
        int result = transactionId;
        result = 31 * result + userId;
        result = 31 * result + (transactionDate != null ? transactionDate.hashCode() : 0);
        result = 31 * result + (citMonthly != +0.0f ? Float.floatToIntBits(citMonthly) : 0);
        result = 31 * result + (taxMonthly != +0.0f ? Float.floatToIntBits(taxMonthly) : 0);
        result = 31 * result + (netSalary != +0.0f ? Float.floatToIntBits(netSalary) : 0);
        result = 31 * result + (salary != +0.0f ? Float.floatToIntBits(salary) : 0);
        return result;
    }

    public int getTransactionId() {
        return transactionId;
    }

    public void setTransactionId(int transactionId) {
        this.transactionId = transactionId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public LocalDate getTransactionDate() {
        return transactionDate;
    }

    public void setTransactionDate(LocalDate transactionDate) {
        this.transactionDate = transactionDate;
    }

    public float getCitMonthly() {
        return citMonthly;
    }

    public void setCitMonthly(float citMonthly) {
        this.citMonthly = citMonthly;
    }

    public float getTaxMonthly() {
        return taxMonthly;
    }

    public void setTaxMonthly(float taxMonthly) {
        this.taxMonthly = taxMonthly;
    }

    public float getNetSalary() {
        return netSalary;
    }

    public void setNetSalary(float netSalary) {
        this.netSalary = netSalary;
    }

    public float getSalary() {
        return salary;
    }

    public void setSalary(float salary) {
        this.salary = salary;
    }
}
