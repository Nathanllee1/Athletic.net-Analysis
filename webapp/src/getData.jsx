get_data(athleticID, _package, endpoint) {
  fetch("/api/" +  endpoint, _package)
    .then(res => res.json())
    .then(
      (result) => {
        return result
      },

      (error) => {
        return 'error'
      }
    )
}
