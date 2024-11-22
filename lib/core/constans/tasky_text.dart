import 'package:final_project/core/constants/tasky_text_style.dart';
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
  static  Text onboard6_tagline1 = Text('Let’s create a ',style: TaskyTextStyle.threeOnboardingTextStyle,);
  static  Text onboard6_tagline2 = Text('space ',style:TaskyTextStyle.differentOrangeWordsTextStyle ,);
  static  Text onboard6_tagline3 = Text('for your  ',style: TaskyTextStyle.threeOnboardingTextStyle);
  static  Text onboard6_tagline4 = Text('workflows.',style: TaskyTextStyle.threeOnboardingTextStyle);

  //Onboard 4 screen
  static Text onboard4_tagline1 = Text('Work more ',style: TaskyTextStyle.threeOnboardingTextStyle);
  static Text onboard4_tagline2 = Text('Structured  ',style:TaskyTextStyle.differentOrangeWordsTextStyle );
  static Text onboard4_tagline3 = Text('and  ',style: TaskyTextStyle.threeOnboardingTextStyle);
  static Text onboard4_tagline4 = Text('Organized 👌 ',style: TaskyTextStyle.threeOnboardingTextStyle);

//Onboard 5 screen
  static  Text onboard5_tagline1 = Text('Manage your',style: TaskyTextStyle.threeOnboardingTextStyle);
  static  Text onboard5_tagline2 = Text('Tasks ',style:TaskyTextStyle.differentOrangeWordsTextStyle );
  static  Text onboard5_tagline3 = Text('quickly for',style: TaskyTextStyle.threeOnboardingTextStyle);
  static  Text onboard5_tagline4 = Text('Results ✌️',style: TaskyTextStyle.threeOnboardingTextStyle);




  // Signin screen
  static const Text signIn_title =  Text('Sign In',textAlign: TextAlign.center);
  static const Text signIn_welcomeBack = Text('Welcome Back');
  static const Text signIn_subtitle1 = Text('Please enter your email address');
  static const Text signIn_subtitle2 = Text('and password for Login');
  static const Text signIn_emailPlaceholder = Text('Enter your email');
  static const Text signIn_passwordPlaceholder = Text('Enter your password');
  static const Text signIn_forgotPassword =  Text('Forgot Password?',textAlign: TextAlign.right);
  static const Text signInButton = Text('Sign In',textAlign: TextAlign.center);
  static const Text signInWith = Text('Signin with',textAlign: TextAlign.center);
  static const Text signIn_notRegistered = Text('Not Registered Yet?',textAlign: TextAlign.center);
  static const Text signIn_signUp = Text('Sign Up',textAlign: TextAlign.center);

  // Signup screen
  static const Text signUp_title = Text('Sign Up',textAlign: TextAlign.center);
  static const Text signUp_welcomeBack = Text('Create Account');
  static const Text signUp_subtitle1 = Text('Please Inter your Informatioin and');
  static const Text signUp_subtitle2 = Text('create your account');
  static const Text signUp_namePlaceholder = Text('Enter your name');
  static const Text signUp_emailPlaceholder = Text('Enter your email');
  static const Text signUp_passwordPlaceholder = Text('Enter your password');
  static const Text signUpButton = Text('Sign Up',textAlign: TextAlign.center);
  static const Text signUpWith = Text('Signup with',textAlign: TextAlign.center);
  static const Text signUp_haveAccount = Text('Have an Account?',textAlign: TextAlign.center);
  static const Text signUp_signIn = Text('Sign In',textAlign: TextAlign.center);


  //Home screen
  static const Text home_subtitle1 =  Text('Let’s make a');
  static const Text home_subtitle2 =  Text('habits together');
  static const Text home_inProgress = Text('inprogress');

  //Today Task Details screen
  static const Text todayTask_title = Text('Today Task',textAlign: TextAlign.center);

  //Monthly Task screen
  static const Text monthlyTask_title = Text('Monthly Task',textAlign: TextAlign.center);

  //Projects screen
  static const Text projects_title = Text('Projects',textAlign: TextAlign.center);
  static const Text projects_search = Text('Search');
  static const Text projects_favourites = Text('Favourites',textAlign: TextAlign.center);
  static const Text projects_recents = Text('Recents',textAlign: TextAlign.center);
  static const Text projects_all = Text('All',textAlign: TextAlign.center);

  //Add screen
  static const Text add_createTask = Text('Create Task');
  static const Text add_createProject = Text('Create Project');
  static const Text add_createTeam = Text('Create Team');
  static const Text add_createEvent = Text('Create Event');

  //Add Task screen
  static const Text addTask_title = Text('Add Task',textAlign: TextAlign.center);
  static const Text addTask_taskName = Text('Task Name');
  static const Text addTask_teamMember = Text('Team Member');
  static const Text addTask_date = Text('Date');
  static const Text addTask_startTime = Text('Start Time');
  static const Text addTask_endTime = Text('End Time');
  static const Text addTask_Board = Text('Board');
  static const Text addTask_urgent = Text('Urgent',textAlign: TextAlign.center);
  static const Text addTask_running = Text('Running',textAlign: TextAlign.center);
  static const Text addTask_ongoing = Text('ongoing',textAlign: TextAlign.center);
  static const Text addTask_saveButton = Text('Save',textAlign: TextAlign.center);

  //Create Team screen
  static const Text createTeam_title = Text('Create Team',textAlign: TextAlign.center);
  static const Text createTeam_teamName = Text('Teame Name');
  static const Text createTeam_teamMember = Text('Team Member');
  static const Text createTeam_type = Text('Type');
  static const Text createTeam_private = Text('Private',textAlign: TextAlign.center);
  static const Text createTeam_public = Text('Public',textAlign: TextAlign.center);
  static const Text createTeam_secret = Text('Secret',textAlign: TextAlign.center);
  static const Text createTeam_createTeamButton = Text('Create team',textAlign: TextAlign.center);


//Chat screen
  static const Text chat_title = Text('Chat',textAlign: TextAlign.center);
  static const Text chat_search = Text('Search');

//Task Status screen
  static const Text taskStatus_title = Text('Task Status',textAlign: TextAlign.center);
  static const Text taskStatus_cpmplete = Text('Cpmplete',textAlign: TextAlign.center);
  static const Text taskStatus_toDo1 = Text('To Do');
  static const Text taskStatus_toDo2 = Text('To Do');
  static const Text taskStatus_inProgress1 = Text('In Progress');
  static const Text taskStatus_inProgress2 = Text('In Progress');
  static const Text taskStatus_cpmpleted1 = Text('Completed');
  static const Text taskStatus_cpmpleted2 = Text('Completed');
  static const Text taskStatus_monthly = Text('Monthly');

//Profile screen
  static const Text profile_title = Text('Profile',textAlign: TextAlign.center);
  static const Text profile_edit = Text('Edit',textAlign: TextAlign.center);
  static const Text profile_onGoing = Text('On Going');
  static const Text profile_totalComplete = Text('Total Complete');
  static const Text profile_myprojects = Text('My Projects');
  static const Text profile_joinTeam = Text('Join a Team');
  static const Text profile_settings = Text('Settings');
  static const Text profile_myTask = Text('My Task');

//Side Menu screen
  static const Text profile_viewProfile = Text('View Profile',textAlign: TextAlign.center);
  static const Text profile_workspace = Text('Workspace');
  static const Text profile_invite = Text('Invite',textAlign: TextAlign.center);
  static const Text profile_manage = Text('Manage');
  static const Text profile_team = Text('Team');
  static const Text profile_labels = Text('Labels');
  static const Text profile_task = Text('Task');
  static const Text profile_member = Text('Member');
  static const Text profile_logoutButton = Text('Log Out',textAlign: TextAlign.center);

  //Search screen
  static const Text search_title = Text('Search',textAlign: TextAlign.center);
  static const Text search_dashboard = Text('Dashboard');
  static const Text search_tasks = Text('Tasks',textAlign: TextAlign.center);
  static const Text search_file = Text('File',textAlign: TextAlign.center);

  //Settings screen
  static const Text settings_title = Text('Settings',textAlign: TextAlign.center);
  static const Text settings_permission = Text('Permissiom');
  static const Text settings_pushNotification = Text('Push Notification');
  static const Text settings_darkMood = Text('Dark Mood');
  static const Text settings_security = Text('Security');
  static const Text settings_help = Text('Help');
  static const Text settings_langauge = Text('Langauge');
  static const Text settings_aboutApplication = Text('About Application');

//Edit Profile screen
  static const Text editProfile_title = Text('Edit Profile',textAlign: TextAlign.center);
  static const Text editProfile_save = Text('Save',textAlign: TextAlign.center);
  static const Text editProfile_name = Text('Name');
  static const Text editProfile_email = Text('Email');
  static const Text editProfile_username = Text('Username');
  static const Text editProfile_number = Text('Number');


//Langauge screen
  static Text langauge_title = Text('Langauge',textAlign: TextAlign.center,style: TaskyTextStyle.titleLanguagePageTextStyle);
  static Text langauge_english = Text('English',style: TaskyTextStyle.languagePageTextStyle);
  static Text langauge_arabic = Text('Arabic',style: TaskyTextStyle.languagePageTextStyle);
  static Text langauge_spanish = Text('Spanish',style: TaskyTextStyle.languagePageTextStyle);
  static Text langauge_france = Text('France',style: TaskyTextStyle.languagePageTextStyle);
}