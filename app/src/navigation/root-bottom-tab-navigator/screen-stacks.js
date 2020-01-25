import { createStackNavigator } from 'react-navigation-stack';

import HomeScreen from '../../components/home/components/page';
import ChatsScreen from '../../components/chat/view';
import ExamPapersScreen from '../../components/exam-papers/page';
import ProfileView from '../../components/user-profile/';
import UsersScreen from '../../components/users/components/page';

export const HomeStack = createStackNavigator({
    Home: HomeScreen,
});

export const ChatStack = createStackNavigator({
    ChatRoom: ChatsScreen,
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

export const ProfileViewStack = createStackNavigator({
    ProfileView: ProfileView
});