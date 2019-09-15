import * as WebBrowser from 'expo-web-browser';
import React from 'react';
import { StyleSheet, Image, Text, View, Platform } from 'react-native';
import Touchable from 'react-native-platform-touchable';
import { Entypo } from '@expo/vector-icons';

const _facebokPage =()=> WebBrowser.openBrowserAsync('https://web.facebook.com/FOCUS-Matric-Tutorials-186104458799069/?eid=ARC8YRgNvM8wDLSazZGM0qimmX2R_tkcgRJ7S29q0TPhBhE6UgUAkYJS1f-4cEATygGHWQeXTUha8FCG&timeline_context_item_type=intro_card_work&timeline_context_item_source=100007006206788&fref=tag');

export default FocusLinksScreen = ({

}) => {
    return (
      <View>
        <Text style={styles.optionsTitleText}>Resources</Text>

        <Touchable
          style={styles.option}
          background={Touchable.Ripple('#ccc', false)}
          onPress={() =>_facebokPage()}>
          <View style={{ flexDirection: 'row' }}>
            <View style={styles.optionIconContainer}>
              <Entypo 
                name={Platform.OS === 'ios' ? 'facebook' : 'facebook'}
                size={30}
                color="#3b5998"
              />
            </View>
            <View style={styles.optionTextContainer}>
              <Text style={styles.optionText}>Follow our Facebook Page</Text>
            </View>
          </View>
        </Touchable>

      </View>
    );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    paddingTop: 15,
  },
  optionsTitleText: {
    fontSize: 16,
    marginLeft: 15,
    marginTop: 9,
    marginBottom: 12,
  },
  optionIconContainer: {
    marginRight: 9,
  },
  option: {
    backgroundColor: '#fdfdfd',
    paddingHorizontal: 15,
    paddingVertical: 15,
    borderBottomWidth: StyleSheet.hairlineWidth,
    borderBottomColor: '#EDEDED',
  },
  optionText: {
    fontSize: 15,
    marginTop: 1,
  },
});
