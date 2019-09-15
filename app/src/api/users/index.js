export const updateUserAvatar = (baseUrl, userDetails) =>
    fetch(baseUrl+'update-user-avatar',
    {
        method: 'POST',
        body: JSON.stringify(userDetails),
        headers: {
            'Content-Type': 'application/json'
    }
    })

export const getUsers = (baseUrl) =>
    fetch(baseUrl)
    .then(response => response.json())
    .then(users => users);
