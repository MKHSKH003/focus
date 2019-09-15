import React, { useState } from 'react';
import {WSnackBar} from 'react-native-smart-tip';

import useApi from '../../../../shared/components/react-use-api'; 

import { usersApi } from '../../../../api';
import { usersBaseUrl } from '../../../../shared/constants/api-selectors'

import View from './users-view';

export default Container = ({
}) => {
    const getUsers = useApi({
        action: user => usersApi.getUsers(usersBaseUrl),
        initialValue: [],
        onError: e => WSnackBar.show({ 
            data: e.message,
            backgroundColor: '#ff0000',
            position: WSnackBar.position.TOP
        })
    }, []);

    return ( 
        <View  
           getUsers={getUsers}
        />
    );
};

Container.navigationOptions = {
    title: 'Users',
};