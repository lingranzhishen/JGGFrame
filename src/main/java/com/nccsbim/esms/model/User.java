package com.nccsbim.esms.model;

import org.hibernate.annotations.Type;
import org.joda.time.LocalDate;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * Created by tulada on 01/08/2015.
 */

@Entity
@Table(name = "user")
public class User {


    @Id
    @Column(name = "user_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int userId;

    @Size(min = 3, max = 20)
    @Column(name = "username")
    @NotNull
    private String username;

    @NotNull
    @Column(name = "user_type")
    private String userType;

    @NotNull
    @Column(name = "password")
    private String password;

    @NotNull
    @Column(name = "first_name")
    private String firstname;

    @Column(name = "middle_name", nullable = true)
    private String middlename;

    @NotNull
    @Column(name = "last_name")
    private String lastname;

    @NotNull
    @Column(name = "email")
    private String email;

    @NotNull
    @Column(name = "contact")
    private String contact;

    @NotNull
    @Column(name = "gender")
    private String gender;

    @NotNull
    @DateTimeFormat(pattern = "MM/dd/yyyy")
    @Type(type = "org.jadira.usertype.dateandtime.joda.PersistentLocalDate")
    @Column(name = "dob")
    private LocalDate DOB;

    @NotNull
    @DateTimeFormat(pattern = "MM/dd/yyyy")
    @Type(type = "org.jadira.usertype.dateandtime.joda.PersistentLocalDate")
    @Column(name = "enrollmentDate")
    private LocalDate enrollmentDate;

    @NotNull
    @Column(name = "marital_status")
    private String maritalStatus;

    @NotNull
    @Column(name = "address")
    private String address;

    @NotNull
    @Column(name = "salary_m")
    private float salaryAmount;

    @Column(name = "cit_y")
    private float citYearly;

    @Column(name = "insurance_y")
    private float insuranceYearly;

    @Column(name = "pan_no")
    private String panNumber;

    @Column(name = "bank_acc_no")
    private String bankAccountNumber;

    @Column(name="tax_y")
    private float taxYearly;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof User)) return false;

        User user = (User) o;

        if (getUserId() != user.getUserId()) return false;
        if (Float.compare(user.getSalaryAmount(), getSalaryAmount()) != 0) return false;
        if (Float.compare(user.getCitYearly(), getCitYearly()) != 0) return false;
        if (Float.compare(user.getInsuranceYearly(), getInsuranceYearly()) != 0) return false;
        if (Float.compare(user.getTaxYearly(), getTaxYearly()) != 0) return false;
        if (getUsername() != null ? !getUsername().equals(user.getUsername()) : user.getUsername() != null)
            return false;
        if (getUserType() != null ? !getUserType().equals(user.getUserType()) : user.getUserType() != null)
            return false;
        if (getPassword() != null ? !getPassword().equals(user.getPassword()) : user.getPassword() != null)
            return false;
        if (getFirstname() != null ? !getFirstname().equals(user.getFirstname()) : user.getFirstname() != null)
            return false;
        if (getMiddlename() != null ? !getMiddlename().equals(user.getMiddlename()) : user.getMiddlename() != null)
            return false;
        if (getLastname() != null ? !getLastname().equals(user.getLastname()) : user.getLastname() != null)
            return false;
        if (getEmail() != null ? !getEmail().equals(user.getEmail()) : user.getEmail() != null) return false;
        if (getContact() != null ? !getContact().equals(user.getContact()) : user.getContact() != null) return false;
        if (getGender() != null ? !getGender().equals(user.getGender()) : user.getGender() != null) return false;
        if (getDOB() != null ? !getDOB().equals(user.getDOB()) : user.getDOB() != null) return false;
        if (getEnrollmentDate() != null ? !getEnrollmentDate().equals(user.getEnrollmentDate()) : user.getEnrollmentDate() != null)
            return false;
        if (getMaritalStatus() != null ? !getMaritalStatus().equals(user.getMaritalStatus()) : user.getMaritalStatus() != null)
            return false;
        if (getAddress() != null ? !getAddress().equals(user.getAddress()) : user.getAddress() != null) return false;
        if (getPanNumber() != null ? !getPanNumber().equals(user.getPanNumber()) : user.getPanNumber() != null)
            return false;
        return !(getBankAccountNumber() != null ? !getBankAccountNumber().equals(user.getBankAccountNumber()) : user.getBankAccountNumber() != null);

    }

    @Override
    public int hashCode() {
        int result = getUserId();
        result = 31 * result + (getUsername() != null ? getUsername().hashCode() : 0);
        result = 31 * result + (getUserType() != null ? getUserType().hashCode() : 0);
        result = 31 * result + (getPassword() != null ? getPassword().hashCode() : 0);
        result = 31 * result + (getFirstname() != null ? getFirstname().hashCode() : 0);
        result = 31 * result + (getMiddlename() != null ? getMiddlename().hashCode() : 0);
        result = 31 * result + (getLastname() != null ? getLastname().hashCode() : 0);
        result = 31 * result + (getEmail() != null ? getEmail().hashCode() : 0);
        result = 31 * result + (getContact() != null ? getContact().hashCode() : 0);
        result = 31 * result + (getGender() != null ? getGender().hashCode() : 0);
        result = 31 * result + (getDOB() != null ? getDOB().hashCode() : 0);
        result = 31 * result + (getEnrollmentDate() != null ? getEnrollmentDate().hashCode() : 0);
        result = 31 * result + (getMaritalStatus() != null ? getMaritalStatus().hashCode() : 0);
        result = 31 * result + (getAddress() != null ? getAddress().hashCode() : 0);
        result = 31 * result + (getSalaryAmount() != +0.0f ? Float.floatToIntBits(getSalaryAmount()) : 0);
        result = 31 * result + (getCitYearly() != +0.0f ? Float.floatToIntBits(getCitYearly()) : 0);
        result = 31 * result + (getInsuranceYearly() != +0.0f ? Float.floatToIntBits(getInsuranceYearly()) : 0);
        result = 31 * result + (getPanNumber() != null ? getPanNumber().hashCode() : 0);
        result = 31 * result + (getBankAccountNumber() != null ? getBankAccountNumber().hashCode() : 0);
        result = 31 * result + (getTaxYearly() != +0.0f ? Float.floatToIntBits(getTaxYearly()) : 0);
        return result;
    }

    public float getTaxYearly() {
        return taxYearly;
    }

    public void setTaxYearly(float taxYearly) {
        this.taxYearly = taxYearly;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getMiddlename() {
        return middlename;
    }

    public void setMiddlename(String middlename) {
        this.middlename = middlename;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public LocalDate getDOB() {
        return DOB;
    }

    public void setDOB(LocalDate DOB) {
        this.DOB = DOB;
    }

    public LocalDate getEnrollmentDate() {
        return enrollmentDate;
    }

    public void setEnrollmentDate(LocalDate enrollmentDate) {
        this.enrollmentDate = enrollmentDate;
    }

    public String getMaritalStatus() {
        return maritalStatus;
    }

    public void setMaritalStatus(String maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public float getSalaryAmount() {
        return salaryAmount;
    }

    public void setSalaryAmount(float salaryAmount) {
        this.salaryAmount = salaryAmount;
    }

    public float getCitYearly() {
        return citYearly;
    }

    public void setCitYearly(float citYearly) {
        this.citYearly = citYearly;
    }

    public float getInsuranceYearly() {
        return insuranceYearly;
    }

    public void setInsuranceYearly(float insuranceYearly) {
        this.insuranceYearly = insuranceYearly;
    }

    public String getPanNumber() {
        return panNumber;
    }

    public void setPanNumber(String panNumber) {
        this.panNumber = panNumber;
    }

    public String getBankAccountNumber() {
        return bankAccountNumber;
    }

    public void setBankAccountNumber(String bankAccountNumber) {
        this.bankAccountNumber = bankAccountNumber;
    }

    @Override
    public String toString() {
        return "ID: " + this.userId + " Username: " + this.username;
    }
}
