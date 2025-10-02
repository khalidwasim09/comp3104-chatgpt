document.addEventListener('DOMContentLoaded', () => {
  document.getElementById('status').textContent = 'Ready ✔';
  show('home');
});

function show(route) {
  const el = document.getElementById('view');
  if (route === 'home') {
    el.innerHTML = `<h2>Home</h2><p>Welcome to your GitHub Pages–hosted SPA.</p>`;
  } else if (route === 'about') {
    el.innerHTML = `<h2>About</h2><p>This page is deployed via GitHub Actions.</p>`;
  } else {
    el.innerHTML = `<h2>Not found</h2>`;
  }
}
