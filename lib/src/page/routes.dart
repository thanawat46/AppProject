import 'package:flutter/material.dart';

import 'Login/LoginPage.dart';
import 'Home/HomePage.dart';
import 'Loan/LoanPage.dart';
import 'Savings/SavingsPage.dart';
import 'Cal/CalDividendPage.dart';
import 'Cal/CalLoanPage.dart';
import 'Profile/ProfilePage.dart';
import 'Deposit/DepositPage.dart';

class AppRoute{
  static const home = 'home';
  static const login = 'login';
  static const loan = 'loan';
  static const savings = 'savings';
  static const CalDividend = 'CalDividend';
  static const CalLoan = 'CalLoan';
  static const Profile = 'Profile';
  static const Deposit = 'Deposit';


  static get all => <String, WidgetBuilder>{
    login : (context) => const LoginPage(),
    home : (context) => const HomePage(),
    loan : (context) => const Loanpage(),
    savings : (context) => const Savingspage(),
    CalDividend : (context) => const Caldividendpage(),
    CalLoan : (context) => const Calloanpage(),
    Profile : (context) => const Profilepage(),
    Deposit : (context) => const Depositpage(),
  };
}