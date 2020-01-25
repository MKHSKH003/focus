import React, { useState, useEffect } from 'react'
import { GiftedChat } from 'react-native-gifted-chat'
import firebase from "firebase";
import _ from 'lodash';

import { onError } from '../../shared/components/notifications'
import appsettings from '../../../app.json'

export default ChatRoom = screenProps => {

  console.log('screenProps', screenProps);
  if (!firebase.apps.length) {
    firebase.initializeApp(appsettings.FirebaseConfig);
  }
  const user = screenProps.screenProps.currentUser;
  const currentUser = { _id: user.Id, name: user.Name, avatar: user.Avatar };
  var ref = firebase.database().ref("chat-rooms/everyone/messages/");
  const [messages, setMessages] = useState([]);
  const [messagesRetrieved, setMessagesRetrieved] = useState(false);

  if(!messagesRetrieved)
    ref.on("value", function (snapshot) {
      setMessages(_.toArray(snapshot.val()))
      setMessagesRetrieved(true)
    }, function (error) {
      onError("The read failed: " + error.message);
    })

  onSend = message => {
    console.log('message', message);
    setMessages(GiftedChat.append(messages, message));
    ref.push().set({
      ...message,
      createdAt: firebase.database.ServerValue.TIMESTAMP
    })
  }

  return (
    <GiftedChat
      renderUsernameOnMessage
      messages={messages.sort((a, b) => b.createdAt - a.createdAt)}
      onSend={messages => onSend(messages[0])}
      user={currentUser}
    />
  )
}

ChatRoom.navigationOptions = {
  title: 'ChatRoom',
};