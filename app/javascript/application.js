// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "bootstrap"



document.addEventListener("DOMContentLoaded", function() {
  document.getElementById('image-input').addEventListener('change', function(e) {
    let reader = new FileReader();
    reader.onload = function(event) {
      document.getElementById('image-preview').setAttribute('src', event.target.result);
      document.getElementById('image-preview').style.display = 'block';
    }
    reader.readAsDataURL(e.target.files[0]);
  });
});
