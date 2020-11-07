import gallery from './model'
Array.from(document.querySelectorAll('[data-gallery]')).forEach(gallery.set)
