import { createBottomTabNavigator } from 'react-navigation';

import { 
  HomeStack,
  LinksStack,
  ExamPapersStack,
  SignInStack,
  UsersStack
} from './screen-stacks'
import navigationOptionIcon from './navigation-option-icon'

HomeStack.navigationOptions = {
  ...navigationOptionIcon('Home','ios-information-circle', 'md-information-circle')
};

LinksStack.navigationOptions = {
  ...navigationOptionIcon('Links','ios-link', 'md-link')
};

ExamPapersStack.navigationOptions = {
  ...navigationOptionIcon('Exams','ios-paper', 'md-paper')
};

UsersStack.navigationOptions = {
  ...navigationOptionIcon('Users','ios-people', 'md-people')
};

SignInStack.navigationOptions = {
  ...navigationOptionIcon('Profile','ios-options', 'md-options')
};

export default createBottomTabNavigator({
  HomeStack,
  LinksStack,
  ExamPapersStack,
  UsersStack,
  SignInStack
});