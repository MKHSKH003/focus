import React from 'react';
import { ScrollView, StyleSheet } from 'react-native';

import FocusLinksView from './link';

export default LinksScreen = () => {
  return (
    <ScrollView style={styles.container}>
      <FocusLinksView />
    </ScrollView>
  );
}

LinksScreen.navigationOptions = {
  title: 'Links',
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    paddingTop: 15,
    backgroundColor: '#fff',
  },
});
