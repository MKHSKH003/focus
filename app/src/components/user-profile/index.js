import React, { useState } from 'react';
import { Alert } from 'react-native';
import {WSnackBar} from 'react-native-smart-tip';

import useApi from '../../shared/components/react-use-api'; 

import { usersApi } from '../../api';
import { usersBaseUrl } from '../../shared/constants/api-selectors'

import UserProfile from './profile-view';

export default Container = ({
    screenProps
}) => {
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
        <UserProfile  
            user={screenProps.user}
            updateUserAvatar={updateUserAvatar.execute}
        />
    );
};

Container.navigationOptions = {
    title: 'Profile',
};