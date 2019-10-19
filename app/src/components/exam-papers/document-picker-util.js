import * as DocumentPicker from 'expo-document-picker';
import { onError } from '../../shared/components/notifications';

import { getFirebaseUrl } from '../../shared/utils/documents';

const _pickDocument = async ({
    uploadExamPaper,
    setUploadInProgress,
    gradeID
}) => {
    let result = await DocumentPicker.getDocumentAsync({});

    if (result.type != "cancel") {
        if (result.name.split('.')[1] != 'pdf')
            onError('Incorrect file type.')
        else {
            setUploadInProgress(true);
            uploadExamPaper.execute({
                name: result.name.split('.')[0],
                url: await getFirebaseUrl(result.uri, "documents/"),
                gradeID: gradeID
            });
        }
    }
}

export default _pickDocument;