import 'package:injectable/injectable.dart';

@Injectable()
class BaseReq {
  final String loginReq = '/user/login';
  final String signUpGoogleReq = '/user/googleSignUp';
  final String loginGoogleReq = '/user/googleLogin';
  final String suggestionReq = '/api/analytics/getSugestions';
  final String analyticReq = '/api/analytics/getAnalysis';
  final String refreshTokenReq = '/user/refreshSession';
  final String registerReq = '/user/signUp';
  final String questionReq = '/api/kebowise/chatQuestions';
  final String goalReq = '/api/dashboard/getGoals';
  final String savingReq = '/api/dashboard/getSavings';
  final String eventReq = '/api/dashboard/getEvents';
  final String userInfoReq = '/api/users/getUserData';
  final String scoreReq = '/api/dashboard/getScore';
  final String verifyAccountReq = '/user/verify';
  final String updateCategoryReq = '/api/transactions/updateCategory';
  final String addSubcategoryReq = '/api/transactions/addSubCategory';
  final String updateDescriptionReq = '/api/transactions/updateDescription';
  final String resendOTPReq = '/user/getVerificationMessage';
  final String balanceReq = '/api/accounts/getTotalBalance';
  final String categoryReq = '/api/transactions/getCategories';
  final String dashboardLineReq = '/api/transactions/dashboard/expensesChart';
  final String dashboardIncomeReq = '/api/transactions/dashboard/incomesChart';
  final String dashboardBarReq = '/api/transactions/dashboard/bar';
  final String institutionReq = '/api/institutions/getAllInstitutions';
  final String transactionReq = '/api/transactions/getTransactions';
  final String transactionByAccountReq =
      '/api/transactions/getTransactionsByAccount';
  final String accountReq = '/api/accounts/getAccounts';
  final String addAccountReq = '/belvo/addAccount';
  final String linkInstitutionReq = '/belvo/linkInstitution';
  final String resumeLinkSync = '/belvo/resumeLinkSync';
  final String incomeReq = '/api/transactions/dashboard/movements/INFLOW';
  final String expenseReq = '/api/transactions/dashboard/movements/OUTFLOW';
  final String addManualAccount = '/api/accounts/addCustomAccount';
  final String addManualTransaction = '/api/transactions/addCustomTransaction';
  final String updateInfoReq = '/api/users/updateProfile';
  final String trendIncomeReq = '/api/dashboard/trendIncomePlot';
  final String trendExpenseReq = '/api/dashboard/trendOutcomePlot';
  final String deleteAccountReq = '/api/accounts/deleteAccount';
  final String deleteTransactionReq = '/api/transactions/deleteTransaction';
  final String forgetPasswordReq = '/user/forgotPassword';
  final String confirmForgetPasswordReq = '/user/confirmNewPassword';
  final String getAviableAccountReq = '/belvo/getAviableAccounts';
  final String registerSelectedAccountReq = '/belvo/registerSelectedAccounts';
}
