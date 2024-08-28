// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(score) =>
      "Based on your financial data, your KeboScore is ${score}, which is considered good.";

  static String m1(x, y) => "${x}-${y} years old";

  static String m2(user) => " Hello, ${user}";

  static String m3(x) => "Last ${x} days";

  static String m4(amount) =>
      "You can send a maximum of ${amount} images at once";

  static String m5(page) => "STEP ${page}";

  static String m6(link) =>
      "This process will only take a few seconds. We use Belvo to synchronize your transactions with Kebo. Updates are performed twice a day, but can be in real-time if you have a Pro subscription. Learn more about how Open Banking works ${link}.";

  static String m7(x) => "User ID${x}";

  static String m8(phone) => "We will text you at the number ${phone}";

  static String m9(minute) => "${minute} minute(s)";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "abort": MessageLookupByLibrary.simpleMessage("Abort"),
        "account": MessageLookupByLibrary.simpleMessage("Account"),
        "activate": MessageLookupByLibrary.simpleMessage("Activate"),
        "actual": MessageLookupByLibrary.simpleMessage("Actual"),
        "addAccount": MessageLookupByLibrary.simpleMessage("Add account"),
        "addAccountSuccess":
            MessageLookupByLibrary.simpleMessage("Add account success!"),
        "addNewCategory":
            MessageLookupByLibrary.simpleMessage("Add a new category"),
        "addSubcategorySuccess":
            MessageLookupByLibrary.simpleMessage("Add subcategory success!"),
        "addTransactionSuccess":
            MessageLookupByLibrary.simpleMessage("Add transaction success!"),
        "allEntriesWillBeLost":
            MessageLookupByLibrary.simpleMessage("All entries will be lost."),
        "amount": MessageLookupByLibrary.simpleMessage("Amount"),
        "amountOfTransaction":
            MessageLookupByLibrary.simpleMessage("Amount of Transaction"),
        "analytics": MessageLookupByLibrary.simpleMessage("Analytics"),
        "appName": MessageLookupByLibrary.simpleMessage("Kebo"),
        "areYouSure": MessageLookupByLibrary.simpleMessage("Are you sure?"),
        "askKebo": MessageLookupByLibrary.simpleMessage("Ask Kebo Wise..."),
        "balance": MessageLookupByLibrary.simpleMessage("Balance"),
        "balanceGeneral":
            MessageLookupByLibrary.simpleMessage("Balance General"),
        "banks": MessageLookupByLibrary.simpleMessage("Banks"),
        "baseYourFinancial": m0,
        "belvo": MessageLookupByLibrary.simpleMessage("Belvo"),
        "betweenXtoY": m1,
        "birthday": MessageLookupByLibrary.simpleMessage("Birthday"),
        "byContinuing": MessageLookupByLibrary.simpleMessage(
            "By continuing, you are accepting the Privacy Policy of "),
        "camera": MessageLookupByLibrary.simpleMessage("Camera"),
        "category": MessageLookupByLibrary.simpleMessage("Category"),
        "categoryName": MessageLookupByLibrary.simpleMessage("Category Name"),
        "chooseDate": MessageLookupByLibrary.simpleMessage("Choose Date"),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "commingSoon": MessageLookupByLibrary.simpleMessage("Comming"),
        "commonError": MessageLookupByLibrary.simpleMessage("¡Error!"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirm password"),
        "connectYourAccount":
            MessageLookupByLibrary.simpleMessage("Link an institution"),
        "continueText": MessageLookupByLibrary.simpleMessage("Continue"),
        "continueWithApple":
            MessageLookupByLibrary.simpleMessage("Continue with Apple"),
        "continueWithGoogle":
            MessageLookupByLibrary.simpleMessage("Continue with Google"),
        "copy": MessageLookupByLibrary.simpleMessage("Copy"),
        "createAccount": MessageLookupByLibrary.simpleMessage("Create Account"),
        "createCategory":
            MessageLookupByLibrary.simpleMessage("Create category"),
        "createYourPassword":
            MessageLookupByLibrary.simpleMessage("Create your\npassword"),
        "cropImage": MessageLookupByLibrary.simpleMessage("Crop Image"),
        "currentDay": MessageLookupByLibrary.simpleMessage("Current Day"),
        "daily": MessageLookupByLibrary.simpleMessage("Daily"),
        "date": MessageLookupByLibrary.simpleMessage("Date"),
        "dateChart": MessageLookupByLibrary.simpleMessage("←  Date  →"),
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "deleteAccountSuccess":
            MessageLookupByLibrary.simpleMessage("Delete account success!"),
        "deleteTransactionSuccess":
            MessageLookupByLibrary.simpleMessage("Delete transaction success!"),
        "description": MessageLookupByLibrary.simpleMessage("Description"),
        "detailAccount": MessageLookupByLibrary.simpleMessage("Detail account"),
        "doYouWantDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "Do you want to delete account?"),
        "doYouWantDeleteTransaction": MessageLookupByLibrary.simpleMessage(
            "Do you want to delete transaction?"),
        "doYouWantEnableNotification": MessageLookupByLibrary.simpleMessage(
            "Do you want to enable \nnotifications?"),
        "editProfie": MessageLookupByLibrary.simpleMessage("Edit profile"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "en": MessageLookupByLibrary.simpleMessage("English"),
        "enableBiometricAuthentication": MessageLookupByLibrary.simpleMessage(
            "Enable\nBiometric\nAuthentication"),
        "enterEmailAndPassword": MessageLookupByLibrary.simpleMessage(
            "Enter your email and your Kebo password"),
        "enterSecurePassword": MessageLookupByLibrary.simpleMessage(
            "Enter a secure password \nfor your account."),
        "enterYourCredentials":
            MessageLookupByLibrary.simpleMessage("Enter your credentials"),
        "es": MessageLookupByLibrary.simpleMessage("Spanish"),
        "expenseAndBudgetAlerts":
            MessageLookupByLibrary.simpleMessage("Expense and Budget Alerts"),
        "expenseAndIncomeAnalysis":
            MessageLookupByLibrary.simpleMessage("Expense and Income Analysis"),
        "expenses": MessageLookupByLibrary.simpleMessage("Expenses"),
        "expensesByCategory":
            MessageLookupByLibrary.simpleMessage("Expenses by category"),
        "expensesOverTime":
            MessageLookupByLibrary.simpleMessage("Expenses over time"),
        "female": MessageLookupByLibrary.simpleMessage("Female"),
        "finApps": MessageLookupByLibrary.simpleMessage("FinApps"),
        "firstName": MessageLookupByLibrary.simpleMessage("First Name"),
        "forgotYourPassword":
            MessageLookupByLibrary.simpleMessage("Forgot your password?"),
        "gallery": MessageLookupByLibrary.simpleMessage("Gallery"),
        "gender": MessageLookupByLibrary.simpleMessage("Gender"),
        "general": MessageLookupByLibrary.simpleMessage("General"),
        "goToBegin":
            MessageLookupByLibrary.simpleMessage("Go to the beginning"),
        "goals": MessageLookupByLibrary.simpleMessage("Goals"),
        "hello": MessageLookupByLibrary.simpleMessage("Hello 👋🏼"),
        "helloAgain": MessageLookupByLibrary.simpleMessage("Hello again"),
        "helloX": m2,
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "howDoYouIdentify": MessageLookupByLibrary.simpleMessage(
            "How do you identify yourself?"),
        "howToImprove": MessageLookupByLibrary.simpleMessage(
            "How to improve my KeboScore?"),
        "iPreferNotToChoose":
            MessageLookupByLibrary.simpleMessage("I prefer not to choose"),
        "ifYouEnableThisOption": MessageLookupByLibrary.simpleMessage(
            "If you enable this option, \nyou don\'t need to enter the password\nto log in"),
        "income": MessageLookupByLibrary.simpleMessage("Income"),
        "incomePerMonth":
            MessageLookupByLibrary.simpleMessage("Income per month"),
        "inputErrorDescriptionMustNotBeEmpty":
            MessageLookupByLibrary.simpleMessage("Description cannot be empty"),
        "inputErrorEmailEmpty":
            MessageLookupByLibrary.simpleMessage("Email cannot be empty"),
        "inputErrorEmailInvalid": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid email address"),
        "inputErrorNameEmpty":
            MessageLookupByLibrary.simpleMessage("Name cannot be empty"),
        "inputErrorPassionEmpty": MessageLookupByLibrary.simpleMessage(
            "Please provide a passion of yours"),
        "inputErrorPasswordHasSpecialChar":
            MessageLookupByLibrary.simpleMessage(
                "Password must not contain special char"),
        "inputErrorPasswordNoDigit": MessageLookupByLibrary.simpleMessage(
            "Password must contain at least one digit"),
        "inputErrorPasswordNoUppercase": MessageLookupByLibrary.simpleMessage(
            "Password must contain at least one uppercase letter"),
        "inputErrorPasswordSpecialChar": MessageLookupByLibrary.simpleMessage(
            "Password must contain at least one special char"),
        "inputErrorPasswordTooShort": MessageLookupByLibrary.simpleMessage(
            "Password must be at least 8 characters long"),
        "inputErrorPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Passwords do not match"),
        "inputErrorPhoneNumberEmpty": MessageLookupByLibrary.simpleMessage(
            "Phone number cannot be empty"),
        "inputErrorPhoneNumberInvalid": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid phone number"),
        "inputErrorPhoneNumberInvalidAreaCode":
            MessageLookupByLibrary.simpleMessage(
                "Please enter a phone number with area code"),
        "inputErrorRequiredEmpty":
            MessageLookupByLibrary.simpleMessage("Field cannot be empty"),
        "inputErrorTitleMustNotBeEmpty":
            MessageLookupByLibrary.simpleMessage("Title cannot be empty"),
        "inputYourPhone":
            MessageLookupByLibrary.simpleMessage("Input your phone\nnumber."),
        "inviteFriends": MessageLookupByLibrary.simpleMessage("Invite friends"),
        "inviteYourFriend":
            MessageLookupByLibrary.simpleMessage("Invite your friend"),
        "keboScore": MessageLookupByLibrary.simpleMessage("KeboScore"),
        "keboWise": MessageLookupByLibrary.simpleMessage("Kebo Wise"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "lastName": MessageLookupByLibrary.simpleMessage("Last Name"),
        "lastXDay": m3,
        "letStart": MessageLookupByLibrary.simpleMessage("Let\'s get started"),
        "link": MessageLookupByLibrary.simpleMessage("Link"),
        "loading": MessageLookupByLibrary.simpleMessage("Loading"),
        "logOut": MessageLookupByLibrary.simpleMessage("Log Out"),
        "login": MessageLookupByLibrary.simpleMessage("Log in"),
        "logout": MessageLookupByLibrary.simpleMessage("Log Out"),
        "male": MessageLookupByLibrary.simpleMessage("Male"),
        "manuallyAddAccount":
            MessageLookupByLibrary.simpleMessage("Manually Add Accounts"),
        "manuallyAddTransactions":
            MessageLookupByLibrary.simpleMessage("Manually Add Transactions"),
        "maxImageLimit": m4,
        "merchant": MessageLookupByLibrary.simpleMessage("Merchant"),
        "merchantWebsite":
            MessageLookupByLibrary.simpleMessage("Merchant website"),
        "metrics": MessageLookupByLibrary.simpleMessage("Metrics"),
        "month": MessageLookupByLibrary.simpleMessage("Month"),
        "monthly": MessageLookupByLibrary.simpleMessage("Monthly"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noAbort": MessageLookupByLibrary.simpleMessage("No, abort"),
        "noContinue": MessageLookupByLibrary.simpleMessage("No, continue"),
        "noData": MessageLookupByLibrary.simpleMessage("No data"),
        "noLogout": MessageLookupByLibrary.simpleMessage("No, log out"),
        "noRecord":
            MessageLookupByLibrary.simpleMessage("No record for this time"),
        "notification": MessageLookupByLibrary.simpleMessage("Notification"),
        "notificationSetting":
            MessageLookupByLibrary.simpleMessage("Notification settings"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "orRegisterWith":
            MessageLookupByLibrary.simpleMessage("Or register with"),
        "otpInvalid": MessageLookupByLibrary.simpleMessage("OTP invalid!"),
        "outcome": MessageLookupByLibrary.simpleMessage("Outcome"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "personalizedRecommendations": MessageLookupByLibrary.simpleMessage(
            "Personalized Recommendations"),
        "phone": MessageLookupByLibrary.simpleMessage("Phone number"),
        "phoneOrEmail": MessageLookupByLibrary.simpleMessage("Phone or Email"),
        "pleaseEnterValidEmail": MessageLookupByLibrary.simpleMessage(
            "Please enter a \nvalid email to \nproceed"),
        "pleaseEnterValidNumber": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid number \nto proceed."),
        "previousDay": MessageLookupByLibrary.simpleMessage("Previous Day"),
        "profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "referYouFriend": MessageLookupByLibrary.simpleMessage(
            "Refer you friend to earn bonus"),
        "report": MessageLookupByLibrary.simpleMessage("Report"),
        "reportText": MessageLookupByLibrary.simpleMessage("Report 📈"),
        "reportes": MessageLookupByLibrary.simpleMessage("Reportes"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "savings": MessageLookupByLibrary.simpleMessage("Savings"),
        "scheduleCall": MessageLookupByLibrary.simpleMessage("Schedule a call"),
        "searchCategories":
            MessageLookupByLibrary.simpleMessage("Search categories"),
        "searchForYourAccount":
            MessageLookupByLibrary.simpleMessage("Search for your account..."),
        "seeMore": MessageLookupByLibrary.simpleMessage("See more"),
        "selectDate": MessageLookupByLibrary.simpleMessage("Select Date"),
        "selectYourAccount":
            MessageLookupByLibrary.simpleMessage("Select your account"),
        "selectYourProduct":
            MessageLookupByLibrary.simpleMessage("Select your product"),
        "sendAgain": MessageLookupByLibrary.simpleMessage("Send Again"),
        "sendNewCode":
            MessageLookupByLibrary.simpleMessage("Send me a new code"),
        "sent": MessageLookupByLibrary.simpleMessage("Sent!"),
        "showLess": MessageLookupByLibrary.simpleMessage("Show less"),
        "showMore": MessageLookupByLibrary.simpleMessage("Show more"),
        "skip": MessageLookupByLibrary.simpleMessage("Skip"),
        "start": MessageLookupByLibrary.simpleMessage("Start"),
        "step": m5,
        "subcategory": MessageLookupByLibrary.simpleMessage("Subcategory"),
        "support": MessageLookupByLibrary.simpleMessage("Support"),
        "sureDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete your account?"),
        "sureDeleteAccountSubtitle": MessageLookupByLibrary.simpleMessage(
            "Your data will be permanently deleted and cannot be recovered!"),
        "synchronize": MessageLookupByLibrary.simpleMessage("Synchronize"),
        "synchronized":
            MessageLookupByLibrary.simpleMessage("Synchronized 3m ago"),
        "takeControlOfYourFinances": MessageLookupByLibrary.simpleMessage(
            "Take control of your finances"),
        "takeControllOfYourFinances": MessageLookupByLibrary.simpleMessage(
            "Take Control of Your\nFinances!"),
        "talkSomeone": MessageLookupByLibrary.simpleMessage("Talk to someone"),
        "taxes": MessageLookupByLibrary.simpleMessage("Taxes"),
        "tellMe": MessageLookupByLibrary.simpleMessage(
            "Tell me what’s on your mind, or pick a suggestion."),
        "termAndCondition":
            MessageLookupByLibrary.simpleMessage("Terms and Conditions"),
        "thankYouForTakingTheTime": MessageLookupByLibrary.simpleMessage(
            "Thank you for taking the time to create an account with us. Now, this is the fun part, let\'s explore the app."),
        "theFirstAppImproveYourFinancial": MessageLookupByLibrary.simpleMessage(
            "The #1 App to Improve Your Financial Health"),
        "thisFeatureIsUnderDevelopment": MessageLookupByLibrary.simpleMessage(
            "This feature is under development"),
        "thisProcessWillTakeAFew": m6,
        "today": MessageLookupByLibrary.simpleMessage("Today"),
        "token": MessageLookupByLibrary.simpleMessage("Token"),
        "transactions": MessageLookupByLibrary.simpleMessage("Transactions"),
        "type": MessageLookupByLibrary.simpleMessage("Type"),
        "typeYourEmail":
            MessageLookupByLibrary.simpleMessage("Type your Email"),
        "under18":
            MessageLookupByLibrary.simpleMessage("Minors under 18 years old"),
        "underDevelopment":
            MessageLookupByLibrary.simpleMessage("Under development"),
        "update": MessageLookupByLibrary.simpleMessage("Update"),
        "updateDescriptionSucess":
            MessageLookupByLibrary.simpleMessage("Update description success!"),
        "updateProfileSuccess":
            MessageLookupByLibrary.simpleMessage("Update profile success!"),
        "upper65": MessageLookupByLibrary.simpleMessage("65 years or older"),
        "user": MessageLookupByLibrary.simpleMessage("User"),
        "userId": m7,
        "valueOfTransactions":
            MessageLookupByLibrary.simpleMessage("Value of Transactions"),
        "verifyYourPhone":
            MessageLookupByLibrary.simpleMessage("Verify your number"),
        "view": MessageLookupByLibrary.simpleMessage("View"),
        "viewDetails": MessageLookupByLibrary.simpleMessage("View Details"),
        "weAreSynchronizing": MessageLookupByLibrary.simpleMessage(
            "We are synchronizing your transactions"),
        "weWillTextYouNumber": m8,
        "weWouldLikeToKnowGender": MessageLookupByLibrary.simpleMessage(
            "We would like to know your gender to provide you with a more personalized experience."),
        "weekly": MessageLookupByLibrary.simpleMessage("Weekly"),
        "welcomeTo": MessageLookupByLibrary.simpleMessage("Welcome to"),
        "whatIsYourDateOfBirth":
            MessageLookupByLibrary.simpleMessage("What is your date of birth?"),
        "whichProductDoYouWant": MessageLookupByLibrary.simpleMessage(
            "Which products do you want to synchronize?"),
        "xMinute": m9,
        "yes": MessageLookupByLibrary.simpleMessage("Yes"),
        "yesAbort": MessageLookupByLibrary.simpleMessage("Yes, abort"),
        "yesDeleteAcc":
            MessageLookupByLibrary.simpleMessage("Yes, delete account"),
        "yesLogout": MessageLookupByLibrary.simpleMessage("Yes, log out"),
        "youWantLogout":
            MessageLookupByLibrary.simpleMessage("Do you want to log out?"),
        "yourRecentActivity": MessageLookupByLibrary.simpleMessage(
            "Your recent activity is below.")
      };
}
