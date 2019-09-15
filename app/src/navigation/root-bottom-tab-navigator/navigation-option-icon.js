import React from 'react';
import { Platform } from 'react-native';

import TabBarIcon from '../../shared/components/TabBarIcon';

export default (tabBarLabel, iosIcon, androidIcon) => ({
    tabBarLabel: tabBarLabel,
    tabBarIcon: ({ focused }) => (
      <TabBarIcon 
       focused={focused} 
       name={Platform.OS === 'ios' ? iosIcon : androidIcon}
      />
  )})