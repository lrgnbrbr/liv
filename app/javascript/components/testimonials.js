import player from 'youtube-player'

// if (!Element.prototype.requestFullscreen) {
//   Element.prototype.requestFullscreen = Element.prototype.mozRequestFullscreen || Element.prototype.webkitRequestFullscreen || Element.prototype.msRequestFullscreen;
// }

// Listen for clicks
document.addEventListener('click', function (event) {
  // Check if clicked element is a video thumbnail
  const videoId = event.target.getAttribute('data-video');

  if (!videoId) return;

  const test = player('toto', {
    videoId: videoId
  });

  test.playVideo().then(() => {
    document.querySelector('#toto').requestFullscreen();
  })

  const stateNames = {
        '-1': 'unstarted',
        0: 'ended',
        1: 'playing',
        2: 'paused',
        3: 'buffering',
        5: 'video cued'
    };

    test.on('stateChange', function (event) {
        if (!stateNames[event.data]) {
            throw new Error('Unknown state (' + event.data + ').');
        }

        console.log('State: ' + stateNames[event.data] + ' (' + event.data + ').');
    });
    document.addEventListener("fullscreenchange", function() {
  if (!document.fullscreenElement) test.stopVideo(), location.reload();
}, false);

document.addEventListener("msfullscreenchange", function() {
  if (!document.msFullscreenElement) test.stopVideo(), location.reload();
}, false);

document.addEventListener("mozfullscreenchange", function() {
  if (!document.mozFullScreen) test.stopVideo(), location.reload();
}, false);

document.addEventListener("webkitfullscreenchange", function() {
  if (!document.webkitIsFullScreen) test.stopVideo(), location.reload();
}, false);

}, false);

