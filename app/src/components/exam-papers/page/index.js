import React, { useState } from 'react';
import { WSnackBar } from 'react-native-smart-tip';
import Spinner from 'react-native-loading-spinner-overlay';
import { StyleSheet } from 'react-native';

import useApi from '../../../shared/components/react-use-api';

import { examPapersApi } from '../../../api';
import { examPapersBaseUrl } from '../../../shared/constants/api-selectors'

import ExamPapersView from './View';

export default Container = ({
    screenProps
}) => {
    const [uploadInProgress, setUploadInProgress] = useState(false);

    const getExamPapers = useApi({
        action: () => examPapersApi.getExamPapers(examPapersBaseUrl),
        initialValue: [],
        onError: e => WSnackBar.show({
            data: e.message,
            backgroundColor: '#ff0000',
            position: WSnackBar.position.TOP
        })
    }, []);

    const uploadExamPaper = useApi({
      action: examPaper => examPapersApi.postExamPaper(examPapersBaseUrl, examPaper),
      initialValue: [],
      defer: true,
      onSuccess: examPaper => {
          setUploadInProgress(false);
          getExamPapers.setData(getExamPapers.data.concat(examPaper));
        },
      onError: e => WSnackBar.show({
          data: e.message,
          backgroundColor: '#ff0000',
          position: WSnackBar.position.TOP
      })
  }, []);

    return (
        <>
            <Spinner
                visible={getExamPapers.inProgress || uploadInProgress}
                textContent={'Loading exam papers...'}
                textStyle={styles.spinnerTextStyle}
            />
            <ExamPapersView
               examPapers={getExamPapers.data}
               uploadExamPaper={uploadExamPaper}
               setUploadInProgress={setUploadInProgress}
               currentUser={screenProps.user}
            />
        </>
    );
};

Container.navigationOptions = {
  title: 'Exam Papers'
};

const styles = StyleSheet.create({
    spinnerTextStyle: {
        color: '#FFF'
    }
})