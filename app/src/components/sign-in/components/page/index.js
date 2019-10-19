import React, { useState } from 'react';
import { Alert } from 'react-native';
import { WSnackBar } from 'react-native-smart-tip';

import useApi from '../../../../shared/components/react-use-api'; 

import { loginApi, usersApi } from '../../../../api';
import { loginBaseUrl, usersBaseUrl } from '../../../../shared/constants/api-selectors'
import { onSuccess, onError } from '../../../../shared/components/notifications';

import SignIn from './sign-in';

export default Container = ({

}) => {
    const [currentUser, setCurrentUser] = useState();
    const [isUserLoggedIn, setIsUserLoggedIn] = useState(false);

    const login = useApi({
        action: loginDetails => loginApi.login(loginBaseUrl, loginDetails),
        initialValue: [],
        defer: true,
        onSuccess: currentUser => {
            if(currentUser.Name == null) throw Error("Incorrect login details");
            onSuccess("Welcome "+currentUser.Name);
            setCurrentUser(currentUser);
            setIsUserLoggedIn(true);
        },
        onError: e => onError(e.message)
    }, []);

    const signup = useApi({
        action: signupDetails => loginApi.signup(loginBaseUrl, signupDetails),
        initialValue: [],
        defer: true,
        onSuccess: userSignup => {
            if(userSignup.user == null) throw Error(userSignup.message);
            onSuccess("Welcome "+userSignup.user.Name)
            setCurrentUser(userSignup.user);
            setIsUserLoggedIn(true);
        },
        onError: e => onError(e.message)
    }, []);

    const updateUserAvatar = useApi({
        action: currentUser => usersApi.updateUserAvatar(usersBaseUrl, currentUser),
        initialValue: [],
        defer: true,
        onError: e => onError(e.message)
    }, []);

    return ( 
        <SignIn  
            isUserLoggedIn={isUserLoggedIn}
            currentUser={currentUser}
            onUserLogin={login} 
            onUserSignup={signup}
            updateUserAvatar={updateUserAvatar.execute}
        />
    );
};

Container.navigationOptions = {
    title: 'Profile',
};