import React, { useState } from 'react';
import {
  TouchableOpacity,
  StyleSheet,
  Text,
  View,
  Image,
} from 'react-native';

import { _pickImage } from '../../../shared/utils/imagesUtil'
import Layout from '../../../shared/constants/Layout';

export default ProfileView = ({
  user,
  updateUserAvatar
}) => {
    const [ userProfile, setUserProfile] = useState({
      id: user.Id,
      avatar: user.Avatar
    });

    return (
      <View style={styles.container}>
          <View style={styles.header}>
            <View style={styles.headerContent}>
                <TouchableOpacity onPress={()=> _pickImage(userProfile, setUserProfile, updateUserAvatar) } >
                  <Image style={styles.avatar}
                    source={{ uri:  userProfile.avatar.length == 0 ? 'https://i.stack.imgur.com/l60Hf.png' : userProfile.avatar }}
                  />
                </TouchableOpacity>

                <Text style={styles.name}>
                  {user.Name}
                </Text>
            </View>
          </View>

          <View style={styles.body}>
            <View style={styles.bodyContent}>
              <Text style={styles.textInfo}>
                {user.Email}
              </Text>
            </View>
          </View>
      </View>
    );
}

const styles = StyleSheet.create({
  header:{
    backgroundColor: "#778899",
    marginTop: Layout.window.height/2
  },
  headerContent:{
    padding:30,
    alignItems: 'center',
  },
  avatar: {
    width: 130,
    height: 130,
    borderRadius: 63,
    borderWidth: 4,
    borderColor: "white",
    marginBottom:10,
  },
  name:{
    fontSize:22,
    color:"#FFFFFF",
    fontWeight:'600',
  },
  bodyContent: {
    flex: 1,
    alignItems: 'center',
    padding:30,
  },
  textInfo:{
    fontSize:10,
    marginTop:20,
    color: "#696969",
  }
});