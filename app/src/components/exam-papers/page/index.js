import React from 'react';
import { ScrollView, StyleSheet , Text} from 'react-native';

export default function ExamPapers() {
  return (
    <ScrollView style={styles.container}>
      <Text>  Coming soon...</Text>
    </ScrollView>
  );
}

ExamPapers.navigationOptions = {
  title: 'Past Exam Papers',
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    paddingTop: 15,
    backgroundColor: '#fff',
  },
});
