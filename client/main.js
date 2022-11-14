const loadFaceButton = document.querySelector('#load-face-button');
const loadMeshButton = document.querySelector('#load-mesh-button');

let sketch;

function onButtonClick() {
  document.querySelector('#sketch-buttons-wrapper').style.display = 'none';
}

loadFaceButton.addEventListener('click', () => {
  onButtonClick();
  sketch = startFace();
});

loadMeshButton.addEventListener('click', () => {
  onButtonClick();
  sketch = startFaceMesh();
});
