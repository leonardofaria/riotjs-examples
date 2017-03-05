<video_wistia>

  <div class="wistia_responsive_padding">
    <div class="wistia_responsive_wrapper">
      <iframe id="wistia_player" src={ videoUrl } allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" allowfullscreen mozallowfullscreen webkitallowfullscreen oallowfullscreen msallowfullscreen width="100%" height="100%"></iframe>
    </div>
  </div>

  <script>
    var self = this

    loadVideo(identifier) {
      var url = "//fast.wistia.net/embed/iframe/" + identifier
      $(self.root).find('#wistia_player').attr('src', url)
    }
  </script>

  <style>
    .wistia_responsive_padding {
      padding: 56.25% 0 0 0;
      position: relative;
    }

    .wistia_responsive_wrapper {
      height: 100%;
      left: 0;
      position: absolute;
      top: 0;
      width: 100%;
    }
  </style>

</video_wistia>