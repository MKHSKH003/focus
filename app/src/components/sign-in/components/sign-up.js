import React, { useState } from 'react';
import {
  StyleSheet,
  Text,
  View,
  TextInput,
  ActivityIndicator,
  TouchableHighlight,
  Image
} from 'react-native';

var nameIcon = require('../../../shared/images/icons8-name-tag-16.png');

export default Signup = ({
    onUserSignup,
    setLoginToggle
}) => {

  const [ userDetails, setUserDetails] = useState({ name: '', email: '', password: '' })

  return (
      <View style={styles.container}>
        <View style={styles.inputContainer}>
            <Image style={styles.inputIcon} source={(nameIcon)}/>
            <TextInput style={styles.inputs}
              placeholder="Name"
              underlineColorAndroid='transparent'
              onChangeText={value => setUserDetails({
                ...userDetails,
                name: value
              })}
            />
        </View>
        
        <View style={styles.inputContainer}>
            <Image style={styles.inputIcon} source={{uri: 'https://img.icons8.com/color/48/000000/email.png'}}/>
            <TextInput style={styles.inputs}
              placeholder="Email"
              keyboardType="email-address"
              underlineColorAndroid='transparent'
              onChangeText={value => setUserDetails({
                ...userDetails,
                email: value
              })}
            />
        </View>

        <View style={styles.inputContainer}>
            <Image style={styles.inputIcon} source={{uri: 'https://png.icons8.com/key-2/ultraviolet/50/3498db'}}/>
            <TextInput style={styles.inputs}
              placeholder="Password"
              secureTextEntry={true}
              underlineColorAndroid='transparent'
              onChangeText={value => setUserDetails({
                ...userDetails,
                password: value
              })}
            />
        </View>

        <TouchableHighlight 
          style={[styles.buttonContainer, styles.loginButton]}
          disabled={!userDetails.name || !userDetails.password || !userDetails.email}
          onPress={() => onUserSignup.execute(userDetails)}
        >
          {onUserSignup.inProgress
          ? <ActivityIndicator size="small" color="#00ff00" />
          : <Text style={styles.loginText}>Register</Text>
          }
        </TouchableHighlight>
        
        <TouchableHighlight style={styles.buttonContainer} onPress={() => setLoginToggle(true)}>
            <Text>Login</Text>
        </TouchableHighlight>
      </View>
    );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#fff',
  },
  inputContainer: {
      borderBottomColor: '#778899',
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