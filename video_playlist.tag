<video_playlist>

  <ul>
    <li each={ videos }>
      <a onclick={ loadVideo }>
        <img src={ thumbnail.url }>
      </a>
    </li>
  </ul>

  <script>
    var self = this
    self.videos = []

    loadPlaylist(videos) {
      self.videos = videos
      var first_video_identifier = videos[0].hashed_id
      self.parent.tags.video_wistia.loadVideo(first_video_identifier)
      self.update()
    }

    loadVideo(e) {
      var identifier = e.item.hashed_id
      self.parent.tags.video_wistia.loadVideo(identifier)
    }
  </script>

  <style>
    ul {
      list-style: none;
    }

    li:nth-child(odd) {
      background: #ccc;
      display: inline-block;
      float: left;
      width: 200px;
    }

    a {
      display: block;
    }

    a.active {
      background: yellow;
    }
  </style>

</video_playlist>