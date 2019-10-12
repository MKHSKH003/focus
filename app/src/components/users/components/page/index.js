import React from 'react';
import { WSnackBar } from 'react-native-smart-tip';
import Spinner from 'react-native-loading-spinner-overlay';
import { StyleSheet } from 'react-native';

import useApi from '../../../../shared/components/react-use-api';

import { usersApi } from '../../../../api';
import { usersBaseUrl } from '../../../../shared/constants/api-selectors'

import UsersView from './users-view';

export default Container = ({
}) => {
    const getUsers = useApi({
        action: () => usersApi.getUsers(usersBaseUrl),
        initialValue: [],
        onError: e => WSnackBar.show({
            data: e.message,
            backgroundColor: '#ff0000',
            position: WSnackBar.position.TOP
        })
    }, []);

    return (
        <>
            <Spinner
                visible={getUsers.inProgress}
                textContent={'Loading users...'}
                textStyle={styles.spinnerTextStyle}
            />
            <UsersView
                getUsers={getUsers}
            />
        </>
    );
};

Container.navigationOptions = {
    title: 'Users',
};

const styles = StyleSheet.create({
    spinnerTextStyle: {
        color: '#FFF'
    }
})