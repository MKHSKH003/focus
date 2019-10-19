import React, { useState } from 'react';
import Spinner from 'react-native-loading-spinner-overlay';
import { StyleSheet } from 'react-native';

import useApi from '../../../shared/components/react-use-api';
import { onSuccess, onError } from '../../../shared/components/notifications';
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
        onError: e => onError(e.message)
    }, []);

    const uploadExamPaper = useApi({
      action: examPaper => examPapersApi.postExamPaper(examPapersBaseUrl, examPaper),
      initialValue: [],
      defer: true,
      onSuccess: examPaper => {
          setUploadInProgress(false);
          getExamPapers.setData(getExamPapers.data.concat(examPaper));
          onSuccess('Exam paper uploaded successfully.');
        },
      onError: e => onError(e.message)
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
               currentUser={screenProps.currentUser}
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