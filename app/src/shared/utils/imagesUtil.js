import firebase from 'firebase';
import * as ImagePicker from 'expo-image-picker';
import * as Permissions from 'expo-permissions';

import appsettings from '../../../app.json'


export const _pickImage = async (userProfile, setUserProfile, updateUserAvatar) => {
  const { status } = await Permissions.askAsync(Permissions.CAMERA_ROLL);
  if (status === 'granted') {
    let result = await ImagePicker.launchImageLibraryAsync({
      allowsEditing: true,
      aspect: [4, 3],
    });

    if (!result.cancelled) {
      setUserProfile({
        ...userProfile,
        avatar: result.uri
      })
      uploadAndUpdate(result.uri, userProfile, updateUserAvatar)
    }
  }
  else {
    throw new Error('Camera roll permission not granted');
  }
};

export const uploadAndUpdate = async (uri, userProfile, updateUserAvatar) => {
    if (!firebase.apps.length) {
      firebase.initializeApp(appsettings.FirebaseConfig);
    }
    
    const blob = await new Promise((resolve, reject) => {
    const xhr = new XMLHttpRequest();
    xhr.onload = function() {
        resolve(xhr.response);
      };
      xhr.onerror = function(e) {
        reject(new TypeError('Network request failed'));
      };
      xhr.responseType = 'blob';
      xhr.open('GET', uri, true);
      xhr.send(null);
    });
  
    var ref = firebase.storage().ref().child("images/"+appsettings.Environment+"/" + Math.random().toString(36).substring(2, 15) + Math.random().toString(36).substring(2, 15));
    const snapshot = await ref.put(blob);

    updateUserAvatar.execute({
      ...userProfile,
      avatar: await snapshot.ref.getDownloadURL()
    });
  }

export const readImageURL = (input, object, setObjectImage) => {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = () => setObjectImage({
          ...object,
          avatar: reader.result
        })
        reader.readAsDataURL(input.files[0]);
    }
  }
