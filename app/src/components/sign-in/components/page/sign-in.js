import React, { useState } from 'react';
import {
  StyleSheet,
  Text,
  View,
  TextInput,
  Button,
  TouchableHighlight,
  Image,
  Alert
} from 'react-native';

import Login from '../login-in';
import Signup from '../sign-up';
import ProfileView from '../profile-view';

var nameIcon = require('../../../../shared/images/icons8-name-tag-16.png');

export default SignIn = ({
    isUserLoggedIn,
    user,
    onUserLogin,
    onUserSignup,
    updateUserAvatar
}) => {

  const [loginToggle, setLoginToggle] = useState(true)

  const onClickListener = (viewId) => {
    Alert.alert("Alert", "Button pressed "+viewId);
  }

  return (
      <View style={styles.container}>
        {isUserLoggedIn 
        ? <ProfileView 
            user={user}
            updateUserAvatar={updateUserAvatar}
          />
        :  loginToggle
            ? <Login
                isUserLoggedIn={isUserLoggedIn}
                user={user}
                onUserLogin={onUserLogin}
                setLoginToggle={setLoginToggle}
              />
            : <Signup 
                isUserLoggedIn={isUserLoggedIn}
                user={user}
                onUserSignup={onUserSignup}
                setLoginToggle={setLoginToggle}
              />
        } 
      </View>
    );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#DCDCDC',
  },
  inputContainer: {
      borderBottomColor: '#F5FCFF',
      backgroundColor: '#FFFFFF',
      borderBottomWidth: 1,
      width:250,
      height:45,
      marginBottom:20,
      flexDirection: 'row',
      alignItems:'center'
  },
  inputs:{
      height:45,
      marginLeft:16,
      borderBottomColor: '#FFFFFF',
      flex:1,
  },
  inputIcon:{
    width:30,
    height:30,
    marginLeft:15,
    justifyContent: 'center'
  },
  buttonContainer: {
    height:45,
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center',
    marginBottom:20,
    width:250,
  },
  loginButton: {
    backgroundColor: "#778899",
  },
  loginText: {
    color: 'white',
  }
});