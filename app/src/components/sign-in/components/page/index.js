import React, { useState } from 'react';
import { Alert } from 'react-native';
import {WSnackBar} from 'react-native-smart-tip';

import useApi from '../../../../shared/components/react-use-api'; 

import { loginApi, usersApi } from '../../../../api';
import { loginBaseUrl, usersBaseUrl } from '../../../../shared/constants/api-selectors'

import SignIn from './sign-in';

export default Container = ({

}) => {
    const [user, setUser] = useState();
    const [isUserLoggedIn, setIsUserLoggedIn] = useState(false);

    const login = useApi({
        action: loginDetails => loginApi.login(loginBaseUrl, loginDetails),
        initialValue: [],
        defer: true,
        onSuccess: user => {
            if(user.Name == null) throw Error("Incorrect login details");
            WSnackBar.show({ 
                data: "Welcome "+user.Name,
                backgroundColor: '#00ff00',
                position: WSnackBar.position.TOP
            })
            setUser(user);
            setIsUserLoggedIn(true);
        },
        onError: e => WSnackBar.show({ 
            data: e.message,
            backgroundColor: '#ff0000',
            position: WSnackBar.position.TOP
        })
    }, []);

    const signup = useApi({
        action: signupDetails => loginApi.signup(loginBaseUrl, signupDetails),
        initialValue: [],
        defer: true,
        onSuccess: userSignup => {
            if(userSignup.user == null) throw Error(userSignup.message);
             WSnackBar.show({
                data: "Welcome "+userSignup.user.Name,
                backgroundColor: '#00ff00',
                position: WSnackBar.position.TOP
            })
            setUser(userSignup.user);
            setIsUserLoggedIn(true);
        },
        onError: e => WSnackBar.show({ 
            data: e.message,
            backgroundColor: '#ff0000',
            position: WSnackBar.position.TOP
        })
    }, []);

    const updateUserAvatar = useApi({
        action: user => usersApi.updateUserAvatar(usersBaseUrl, user),
        initialValue: [],
        defer: true,
        onError: e => WSnackBar.show({ 
            data: e.message,
            backgroundColor: '#ff0000',
            position: WSnackBar.position.TOP
        })
    }, []);

    return ( 
        <SignIn  
            isUserLoggedIn={isUserLoggedIn}
            user={user}
            onUserLogin={login} 
            onUserSignup={signup}
            updateUserAvatar={updateUserAvatar.execute}
        />
    );
};

Container.navigationOptions = {
    title: 'Profile',
};