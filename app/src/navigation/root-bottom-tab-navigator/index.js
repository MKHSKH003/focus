import { createBottomTabNavigator } from 'react-navigation';

import { 
  HomeStack,
  ChatStack,
  ExamPapersStack,
  ProfileViewStack,
  UsersStack
} from './screen-stacks'
import navigationOptionIcon from './navigation-option-icon'

HomeStack.navigationOptions = {
  ...navigationOptionIcon('Home','ios-information-circle', 'md-information-circle')
};

ChatStack.navigationOptions = {
  ...navigationOptionIcon('ChatRoom','ios-chatboxes', 'md-chatboxes')
};

ExamPapersStack.navigationOptions = {
  ...navigationOptionIcon('Exams','ios-paper', 'md-paper')
};

UsersStack.navigationOptions = {
  ...navigationOptionIcon('Users','ios-people', 'md-people')
};

ProfileViewStack.navigationOptions = {
  ...navigationOptionIcon('Profile','ios-options', 'md-options')
};

export default createBottomTabNavigator({
  HomeStack,
  ChatStack,
  ExamPapersStack,
  UsersStack,
  ProfileViewStack
});