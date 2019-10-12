import appsettings from '../../../app.json';

const baseUrl = appsettings.ApiRestWebServer[appsettings.Environment];
const loginBaseUrl = baseUrl+'/login/';
const usersBaseUrl = baseUrl+'/users/';
const examPapersBaseUrl = baseUrl+'/exam-papers/';

export {
    loginBaseUrl,
    usersBaseUrl,
    examPapersBaseUrl
}