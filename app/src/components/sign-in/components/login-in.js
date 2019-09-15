import React, { useState } from 'react';
import {
  StyleSheet,
  Text,
  View,
  TextInput,
  ActivityIndicator,
  TouchableHighlight,
  Image,
  Alert
} from 'react-native';

var nameIcon = require('../../../shared/images/icons8-name-tag-16.png');

export default UserLogin = ({
    isUserLoggedIn,
    user,
    onUserLogin,
    setLoginToggle
}) => {

  const [ userDeatils, setUserDeatils] = useState({ name: '', password: '' })

  const onClickListener = (viewId) => {
    Alert.alert("Alert", "Button pressed "+viewId);
  }

  return (
      <View style={styles.container}>
        <View style={styles.inputContainer}>
            <Image style={styles.inputIcon} source={(nameIcon)}/>
            <TextInput style={styles.inputs}
              placeholder="Name"
              underlineColorAndroid='transparent'
              onChangeText={value => setUserDeatils({ 
                ...userDeatils,
                name: value
              })}
            />
        </View>
        
        <View style={styles.inputContainer}>
            <Image style={styles.inputIcon} source={{uri: 'https://png.icons8.com/key-2/ultraviolet/50/3498db'}}/>
            <TextInput style={styles.inputs}
              placeholder="Password"
              secureTextEntry={true}
              underlineColorAndroid='transparent'
              onChangeText={value => setUserDeatils({
                ...userDeatils,
                password: value
              })}
            />
        </View>

        <TouchableHighlight 
          style={[styles.buttonContainer, styles.loginButton]} 
          disabled={!userDeatils.name || !userDeatils.password}
          onPress={() => onUserLogin.execute(userDeatils)}
        >  
          {onUserLogin.inProgress
          ? <ActivityIndicator size="small" color="#00ff00" />
          : <Text style={styles.loginText}>Login</Text>
          }
        </TouchableHighlight>

        {
        /* Not a priority at the moment.
          <TouchableHighlight style={styles.buttonContainer} onPress={() => onClickListener('restore_password')}>
            <Text>Forgot your password?</Text>
          </TouchableHighlight>
        */
        }

        <TouchableHighlight style={styles.buttonContainer} onPress={() => setLoginToggle(false)}>
            <Text>Register</Text>
        </TouchableHighlight>
      </View>
    );
}

UserLogin.navigationOptions = {
    title: 'Login',
};

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