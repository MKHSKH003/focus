import firebase from 'firebase';

import appsettings from '../../../app.json'


export const getFirebaseUrl = async (uri, folder) => {
  if (!firebase.apps.length) {
      firebase.initializeApp(appsettings.FirebaseConfig);
  }

  const blob = await new Promise((resolve, reject) => {
      const xhr = new XMLHttpRequest();
      xhr.onload = function () {
          resolve(xhr.response);
      };
      xhr.onerror = function (e) {
          reject(new TypeError('Network request failed'));
      };
      xhr.responseType = 'blob';
      xhr.open('GET', uri, true);
      xhr.send(null);
  });

  var ref = firebase.storage().ref().child(folder + appsettings.Environment + "/" + Math.random().toString(36).substring(2, 15) + Math.random().toString(36).substring(2, 15));
  var snapshot = await ref.put(blob);

  return snapshot.ref.getDownloadURL();
}