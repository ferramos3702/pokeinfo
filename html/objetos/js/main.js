// Cargar el archivo JSON y manejar la interacción
fetch('data/items.json')
  .then(response => response.json())
  .then(data => {
    const items = data.items;

    // Mostrar todos los objetos
    displayItems(items);

    // Función para buscar un objeto por nombre
    window.searchItem = function() {
      const searchInput = document.getElementById('searchInput').value.toLowerCase();
      const filteredItems = items.filter(item => item.name.toLowerCase().includes(searchInput));
      displayItems(filteredItems);
    };

    // Función para mostrar los objetos en la página
    function displayItems(itemsToDisplay) {
      const itemList = document.getElementById('itemList');
      itemList.innerHTML = '';
      itemsToDisplay.forEach(item => {
        itemList.innerHTML += `
          <div class="item">
            <h2>${item.name}</h2>
            <p><strong>Description:</strong> ${item.description}</p>
            <p><strong>Category:</strong> ${item.category}</p>
            <p><strong>Price:</strong> ${item.price}</p>
          </div>
        `;
      });
    }
  })
  .catch(error => console.error('Error loading JSON:', error));
