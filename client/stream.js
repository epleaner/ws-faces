let streamShown = true;
const options = {
  width: '100%',
  height: '100%',
  channel: 'pbdj3000',
  autoplay: 'false',
  muted: 'false',
  parent: ['facetoface.vercel.app'],
};
const player = new Twitch.Player('audio-stream', options);
player.addEventListener(Twitch.Player.PLAY, function () {
  document.getElementById('audio-stream').style.display = 'none';
  document.getElementById('audio-stream').style.removeProperty('top');
  document.getElementById('audio-stream').style.bottom = '30px';
  document.getElementById('audio-stream').style.right = '5px';
  document.getElementById('display-stream').style.display = 'block';

  streamShown = false;

  document.querySelector('#sketch-buttons-wrapper').style.display = 'flex';
});

const displayStreamButton = document.getElementById('display-stream');

displayStreamButton.addEventListener('click', function () {
  streamShown = !streamShown;

  document.getElementById('audio-stream').style.display = streamShown
    ? 'block'
    : 'none';
  displayStreamButton.textContent = streamShown ? 'hide stream' : 'show stream';
});
