import 'package:final_project/core/constans/tasky_text_style.dart';
import 'package:flutter/material.dart';

class TaskyText {


  static  Text artBoardAppTitle = Text('Tasky',textAlign: TextAlign.center,style: TaskyTextStyle.nameApp,);
  static  Text artBoardBuildingBetter = Text('Building Better Workplaces',textAlign: TextAlign.center,style: TaskyTextStyle.welcomePagesTitle,);
  static  Text artBoardCreate = Text('Create a unique emotional story that describes better than words',textAlign: TextAlign.center, style: TaskyTextStyle.welcomePagesSubTitle,);
  static  Text artBoardGetStartedButton = Text('Get Started',textAlign: TextAlign.center, style:  TaskyTextStyle.taskyAppButtonTextStyle,);

  //Onboard  screen
  static  Text onboardTitle = Text('Task Management',style: TaskyTextStyle.taskManagementTextStyle,);
  static  Text onboardSkipButton = Text('Skip',textAlign: TextAlign.center,style: TaskyTextStyle.skipOnboardingTextStyle,);

  //Onboard 6 screen
  static  Text onboard6Tagline1 = Text('Let’s create a ',style: TaskyTextStyle.threeOnboardingTextStyle,);
  static  Text onboard6Tagline2 = Text('space ',style:TaskyTextStyle.differentOrangeWordsTextStyle ,);
  static  Text onboard6Tagline3 = Text('for your  ',style: TaskyTextStyle.threeOnboardingTextStyle);
  static  Text onboard6Tagline4 = Text('workflows.',style: TaskyTextStyle.threeOnboardingTextStyle);

  //Onboard 4 screen
  static Text onboard4Tagline1 = Text('Work more ',style: TaskyTextStyle.threeOnboardingTextStyle);
  static Text onboard4Tagline2 = Text('Structured  ',style:TaskyTextStyle.differentOrangeWordsTextStyle );
  static Text onboard4Tagline3 = Text('and  ',style: TaskyTextStyle.threeOnboardingTextStyle);
  static Text onboard4Tagline4 = Text('Organized 👌 ',style: TaskyTextStyle.threeOnboardingTextStyle);

//Onboard 5 screen
  static  Text onboard5Tagline1 = Text('Manage your',style: TaskyTextStyle.threeOnboardingTextStyle);
  static  Text onboard5Tagline2 = Text('Tasks ',style:TaskyTextStyle.differentOrangeWordsTextStyle );
  static  Text onboard5Tagline3 = Text('quickly for',style: TaskyTextStyle.threeOnboardingTextStyle);
  static  Text onboard5Tagline4 = Text('Results ✌️',style: TaskyTextStyle.threeOnboardingTextStyle);




  // Signin screen
  static  Text signInTitle =  Text('Sign In',textAlign: TextAlign.center,style: TaskyTextStyle.signInSignupTextStyle,);
  static  Text signInWelcomeBack = Text('Welcome Back',style:TaskyTextStyle.signinSignupTitleTextStyle ,);
  static  Text signInSubtitle1 = Text('Please enter your email address and password for Login',textAlign: TextAlign.left,style: TaskyTextStyle.signInSignupInputFieldTextStyle,);
  static  Text signInEmailPlaceholder = Text('Enter your email',style: TaskyTextStyle.signInSignupHintInputFieldTextStyle,);
  static  Text signInPasswordPlaceholder = Text('Enter your password',style: TaskyTextStyle.signInSignupHintInputFieldTextStyle,);
  static  Text signInForgotPassword =  Text('Forgot Password?',textAlign: TextAlign.right,style: TaskyTextStyle.forgetPasswordTextStyle,);
  static  Text signInButton = Text('Sign In',textAlign: TextAlign.center,style: TaskyTextStyle.signInSignupButtonTextStyle,);
  static  Text signInWith = Text('Signin with',textAlign: TextAlign.center,style: TaskyTextStyle.signInSignupWithTextStyle,);
  static  Text signInNotRegistered = Text('Not Registered Yet?',textAlign: TextAlign.center,style: TaskyTextStyle.notRegistrarTextStyle,);
  static  Text signInSignUp = Text('Sign Up',textAlign: TextAlign.center,style: TaskyTextStyle.signUpTextStyle,);

  // Signup screen
  static  Text signUpTitle = Text('Sign Up',textAlign: TextAlign.center,style: TaskyTextStyle.signInSignupTextStyle,);
  static  Text signUpWelcomeBack = Text('Create Account',style:TaskyTextStyle.signinSignupTitleTextStyle);
  static  Text signUpSubtitle1 = Text('Please Inter your Informatioin and create your account',textAlign: TextAlign.left,style: TaskyTextStyle.signInSignupInputFieldTextStyle);
  static  Text signUpNamePlaceholder = Text('Enter your name',style: TaskyTextStyle.signInSignupHintInputFieldTextStyle);
  static  Text signUpEmailPlaceholder = Text('Enter your email',style: TaskyTextStyle.signInSignupHintInputFieldTextStyle);
  static  Text signUpPasswordPlaceholder = Text('Enter your password',style: TaskyTextStyle.signInSignupHintInputFieldTextStyle);
  static  Text signUpButton = Text('Sign Up',textAlign: TextAlign.center,style: TaskyTextStyle.signInSignupButtonTextStyle);
  static  Text signUpWith = Text('Signup with',textAlign: TextAlign.center,style: TaskyTextStyle.signInSignupWithTextStyle);
  static  Text signUpHaveAccount = Text('Have an Account?',textAlign: TextAlign.center,style: TaskyTextStyle.notRegistrarTextStyle,);
  static  Text signUpSignIn = Text('Sign In',textAlign: TextAlign.center,style: TaskyTextStyle.signUpTextStyle,);


  //Home screen
  static Text homeSubtitle1 =  Text('Let’s make a habits together  🙌',textAlign: TextAlign.left,style: TaskyTextStyle.firstTextHomePageTextStyle,);
  static Text homeInProgress = Text('inprogress',style: TaskyTextStyle.text18gray0500,);

  //Today Task Details screen
  static  Text todayTaskTitle = Text('Today Task',textAlign: TextAlign.center,style: TaskyTextStyle.titleHomePageTextStyle,);

  //Monthly Task screen
  static  Text monthlyTaskTitle = Text('Monthly Task',textAlign: TextAlign.center,style: TaskyTextStyle.titleHomePageTextStyle,);

  //Projects screen
  static Text projectsTitle = Text('Projects',textAlign: TextAlign.center,style: TaskyTextStyle.titleHomePageTextStyle,);
  static Text projectsSearch = Text('Search',style: TaskyTextStyle.text14grayText1500,);
  static Text projectsFavourites = Text('Favourites',textAlign: TextAlign.center,style: TaskyTextStyle.text14darkBlue500,);
  static Text projectsRecents = Text('Recents',textAlign: TextAlign.center,style: TaskyTextStyle.text14grayText1500);
  static Text projectsAll = Text('All',textAlign: TextAlign.center,style: TaskyTextStyle.text14grayText1500);

  //Add screen
  static Text addCreateTask = Text('Create Task',style: TaskyTextStyle.text14darkBlue500,);
  static Text addCreateProject = Text('Create Project',style: TaskyTextStyle.text14darkBlue500);
  static Text addCreateTeam = Text('Create Team',style: TaskyTextStyle.text14darkBlue500);
  static Text addCreateEvent = Text('Create Event',style: TaskyTextStyle.text14darkBlue500);

  //Add Task screen
  static Text addTaskTitle = Text('Add Task',textAlign: TextAlign.center,style: TaskyTextStyle.titleHomePageTextStyle,);
  static Text addTaskTaskName = Text('Task Name',style: TaskyTextStyle.text14grayText1500,);
  static Text addTaskTeamMember = Text('Team Member',style: TaskyTextStyle.text14grayText1500,);
  static Text addTaskDate = Text('Date',style: TaskyTextStyle.text14grayText1500);
  static Text addTaskStartTime = Text('Start Time',style: TaskyTextStyle.text14grayText1500,);
  static Text addTaskEndTime = Text('End Time',style: TaskyTextStyle.text14grayText1500,);
  static Text addTaskBoard = Text('Board',style: TaskyTextStyle.text14grayText1500);
  static Text addTaskUrgent = Text('Urgent',textAlign: TextAlign.center,style: TaskyTextStyle.text14grayText1500);
  static Text addTaskRunning = Text('Running',textAlign: TextAlign.center,style: TaskyTextStyle.text14grayText1500);
  static Text addTaskOngoing = Text('ongoing',textAlign: TextAlign.center,style: TaskyTextStyle.text14grayText1500);
  static Text addTaskSaveButton = Text('Save',textAlign: TextAlign.center,style: TaskyTextStyle.text14white500);

  //Create Team screen
  static Text createTeamTitle = Text('Create Team',textAlign: TextAlign.center,style: TaskyTextStyle.titleHomePageTextStyle);
  static Text createTeamTeamName = Text('Team Name',style: TaskyTextStyle.text14grayText1500);
  static Text createTeamTeamMember = Text('Team Member',style: TaskyTextStyle.text14grayText1500);
  static Text createTeamType = Text('Type',style: TaskyTextStyle.text14grayText1500);
  static Text createTeamPrivate = Text('Private',textAlign: TextAlign.center,style: TaskyTextStyle.text14grayText1500);
  static Text createTeamPublic = Text('Public',textAlign: TextAlign.center,style: TaskyTextStyle.text14grayText1500);
  static Text createTeamSecret = Text('Secret',textAlign: TextAlign.center,style: TaskyTextStyle.text14grayText1500);
  static Text createTeamCreateTeamButton = Text('Create team',textAlign: TextAlign.center,style: TaskyTextStyle.text14white500);


//Chat screen
  static  Text chatTitle = Text('Chat',textAlign: TextAlign.center,style: TaskyTextStyle.titleHomePageTextStyle);
  static  Text chatSearch = Text('Search',style: TaskyTextStyle.text14grayText1500);

//Task Status screen
  static Text taskStatusTitle = Text('Task Status',textAlign: TextAlign.center,style: TaskyTextStyle.titleHomePageTextStyle);
  static Text taskStatusComplete = Text('Complete',textAlign: TextAlign.center,style: TaskyTextStyle.text18grayText1400);
  static Text taskStatusToDo1 = Text('To Do',style: TaskyTextStyle.text14darkBlue400);
  static Text taskStatusToDo2 = Text('To Do',style: TaskyTextStyle.text16darkBlue500);
  static Text taskStatusInProgress1 = Text('In Progress',style: TaskyTextStyle.text14darkBlue400);
  static Text taskStatusInProgress2 = Text('In Progress',style: TaskyTextStyle.text16darkBlue500);
  static Text taskStatusCompleted1 = Text('Completed',style: TaskyTextStyle.text14darkBlue400);
  static Text taskStatusCompleted2 = Text('Completed',style: TaskyTextStyle.text16darkBlue500);
  static Text taskStatusMonthly = Text('Monthly',style: TaskyTextStyle.text18darkBlue600);

//Profile screen
  static Text profileTitle = Text('Profile',textAlign: TextAlign.center,style: TaskyTextStyle.titleHomePageTextStyle);
  static Text profileEdit = Text('Edit',textAlign: TextAlign.center,style: TaskyTextStyle.text12darkBlue400);
  static Text profileOnGoing = Text('On Going',style: TaskyTextStyle.text12grayText1400);
  static Text profileTotalComplete = Text('Total Complete',style: TaskyTextStyle.text12grayText1400);
  static Text profileMyProjects = Text('My Projects',style: TaskyTextStyle.text16darkBlue500);
  static Text profileJoinTeam = Text('Join a Team',style: TaskyTextStyle.text16darkBlue500);
  static Text profileSettings = Text('Settings',style: TaskyTextStyle.text16darkBlue500);
  static Text profileMyTask = Text('My Task',style: TaskyTextStyle.text16darkBlue500);

//Side Menu screen
  static Text profileViewProfile = Text('View Profile',textAlign: TextAlign.center,style: TaskyTextStyle.text12darkBlue400);
  static Text profileWorkspace = Text('Workspace',style: TaskyTextStyle.text18darkBlue600);
  static Text profileInvite = Text('Invite',textAlign: TextAlign.center,style: TaskyTextStyle.text12darkBlue400);
  static Text profileManage = Text('Manage',style: TaskyTextStyle.text18darkBlue600);
  static Text profileTeam = Text('Team',style: TaskyTextStyle.text16darkBlue500);
  static Text profileLabels = Text('Labels',style: TaskyTextStyle.text16darkBlue500);
  static Text profileTask = Text('Task',style: TaskyTextStyle.text16darkBlue500);
  static Text profileMember = Text('Member',style: TaskyTextStyle.text16darkBlue500);
  static Text profileLogoutButton = Text('Log Out',textAlign: TextAlign.center,style: TaskyTextStyle.text14white500);

  //Search screen
  static Text searchTitle = Text('Search',textAlign: TextAlign.center,style: TaskyTextStyle.text12darkBlue400);
  // static Text searchDashboard = Text('Dashboard');
  // static Text searchTasks = Text('Tasks',textAlign: TextAlign.center);
  // static Text searchFile = Text('File',textAlign: TextAlign.center);

  //Settings screen
  static Text settingsTitle = Text('Settings',textAlign: TextAlign.center,style: TaskyTextStyle.titleHomePageTextStyle);
  static Text settingsPermission = Text('Permissiom',style: TaskyTextStyle.text16darkBlue500);
  static Text settingsPushNotification = Text('Push Notification',style: TaskyTextStyle.text16darkBlue500);
  static Text settingsDarkMood = Text('Dark Mood',style: TaskyTextStyle.text16darkBlue500);
  static Text settingsSecurity = Text('Security',style: TaskyTextStyle.text16darkBlue500);
  static Text settingsHelp = Text('Help',style: TaskyTextStyle.text16darkBlue500);
  static Text settingsLanguage = Text('Language',style: TaskyTextStyle.text16darkBlue500);
  static Text settingsAboutApplication = Text('About Application',style: TaskyTextStyle.text16darkBlue500);

//Edit Profile screen
  static Text editProfileTitle = Text('Edit Profile',textAlign: TextAlign.center,style: TaskyTextStyle.titleHomePageTextStyle);
  static Text editProfileSave = Text('Save',textAlign: TextAlign.center,style: TaskyTextStyle.text14Orange500);
  static Text editProfileName = Text('Name',style: TaskyTextStyle.text14grayText1500);
  static Text editProfileEmail = Text('Email',style: TaskyTextStyle.text14grayText1500);
  static Text editProfileUsername = Text('Username',style: TaskyTextStyle.text14grayText1500);
  static Text editProfileNumber = Text('Number',style: TaskyTextStyle.text14grayText1500);


//Langauge screen
  static  Text languageTitle = Text('Language',textAlign: TextAlign.center,style: TaskyTextStyle.titleHomePageTextStyle);
  static  Text languageEnglish = Text('English',style: TaskyTextStyle.text16darkBlue500);
  static  Text languageArabic = Text('Arabic',style: TaskyTextStyle.text16darkBlue500);
  static  Text languageSpanish = Text('Spanish',style: TaskyTextStyle.text16darkBlue500);
  static  Text languageFrance = Text('France',style: TaskyTextStyle.text16darkBlue500);
}