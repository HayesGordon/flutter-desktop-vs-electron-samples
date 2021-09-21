window.addEventListener('DOMContentLoaded', () => {
    makeListOfImages();
})

function makeListOfImages() {

    let imageList = document.getElementById('imagelist');

    for (let i = 1; i < 101; i++) {
        let img = document.createElement('img');
        img.src = `https://picsum.photos/seed/${i}/2000/2000`;
        img.className = 'customImage'
        imageList.appendChild(img);
    }
}