import { createAppContainer, createSwitchNavigator } from 'react-navigation';

import RootBotttomTabNavigator from './root-bottom-tab-navigator/'

export default createAppContainer(
  createSwitchNavigator({
      Root: RootBotttomTabNavigator,
  })
);
