window.addEventListener('message', e => {
    if (e.data.action === 'notify') {
        console.log(e.data.data)
    }
})
