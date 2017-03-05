<video_player>

  <video_playlist />
  <video_wistia />

  <script>
    var self = this

    self.on('mount', function() {
      self.loadApi()
    })

    loadApi() {
      var project_id = opts.project_id
      var api_key = opts.api_key
      var url = '//api.wistia.com/v1/projects/' + project_id  + '.json?api_password=' + api_key

      $.ajax({
        url: url,
        cache: false
      }).done(function(response) {
        self.tags.video_playlist.loadPlaylist(response.medias)
      })
    }
  </script>

</video_player>