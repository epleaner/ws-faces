const loadFaceButton = document.querySelector('#load-face-button');
const loadMeshButton = document.querySelector('#load-mesh-button');

loadFaceButton.addEventListener('click', () => {
  startFace();
});

loadMeshButton.addEventListener('click', () => {
  startFaceMesh();
});
