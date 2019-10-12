import { WSnackBar } from 'react-native-smart-tip';
import * as DocumentPicker from 'expo-document-picker';

import { getFirebaseUrl } from '../../shared/utils/documents';

const _pickDocument = async ({
    uploadExamPaper,
    setUploadInProgress
}) => {
    let result = await DocumentPicker.getDocumentAsync({});

    if (result.type != "cancel") {
        if (result.name.split('.')[1] != 'pdf')
            WSnackBar.show({
                data: 'Incorrect file type.',
                backgroundColor: '#ff0000',
                position: WSnackBar.position.TOP
            })
        else {
            setUploadInProgress(true);
            uploadExamPaper.execute({
                name: result.name.split('.')[0],
                url: await getFirebaseUrl(result.uri, "documents/")
            });
        }
    }
}

export default _pickDocument;