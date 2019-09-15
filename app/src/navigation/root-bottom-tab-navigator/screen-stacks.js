import { createStackNavigator } from 'react-navigation-stack';

import HomeScreen from '../../components/home/components/page';
import LinksScreen from '../../components/links/page';
import ExamPapersScreen from '../../components/exam-papers/page';
import SignInScreen from '../../components/sign-in/components/page';
import UsersScreen from '../../components/users/components/page';

export const HomeStack = createStackNavigator({
    Home: HomeScreen,
});

export const LinksStack = createStackNavigator({
    Links: LinksScreen,
});

export const ExamPapersStack = createStackNavigator({
    Exams: ExamPapersScreen
});

export const UsersStack = createStackNavigator({
    Users: UsersScreen
});

export const AuthStack = createStackNavigator({
    SignIn: 'SignInScreen',
    Login: 'LoginScreen',
    SignUp: 'SignUpScreen',
    UserProfile: 'UserProfileScreen'
});

export const SignInStack = createStackNavigator({
    SignIn: SignInScreen
});