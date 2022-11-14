const loadFaceButton = document.querySelector('#load-face-button');
const loadMeshButton = document.querySelector('#load-mesh-button');

let sketch, selectedSketch;

function onSketchButtonClick(sketchName) {
  document.querySelector('#sketch-buttons-wrapper').style.display = 'none';
  document.querySelector('#stream-wrapper').style.display = 'flex';
  selectedSketch = sketchName;
}

loadFaceButton.addEventListener('click', () => {
  onSketchButtonClick('lips');
});

loadMeshButton.addEventListener('click', () => {
  onSketchButtonClick('mesh');
});

function loadSketch() {
  switch (selectedSketch) {
    case 'lips':
      startFace();
      break;
    case 'mesh':
      startFaceMesh();
  }
}
