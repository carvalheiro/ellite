export const request = (() => {
  const headers = { 'Content-Type': 'application/json' }
  return (url, {method = 'GET', body: BODY} = {}) => {
    const request = {
      headers,
      method,
      body: BODY && JSON.stringify(BODY)
    }
    return fetch(url, request)
      .then(async (Response) => {
        try {
          const response = await Response.json()
          if (!Response.ok) {
            return Promise.reject(response)
          }
            return response
        } catch (err) {
          return Promise.reject(err)
        }
      })
  }
})()
