import consumer from "./consumer";

const initRoomCable = () => {
  const resultsContainer = document.getElementById('results');
  const persoContainer = document.querySelector('.perso')
  if (resultsContainer) {
    const id = resultsContainer.dataset.roomId;

    consumer.subscriptions.create({ channel: "RoomChannel", id: id }, {
      received(data) {
        const json = JSON.parse(data)
        // console.log(typeof data)
        if (json.category) { 
          const categoryId = `#result-${json.category}`
          const nbPlayer = json.player_number
          // console.log(json)
          // document.querySelector(categoryId).innerText = json.rank
          let widthRank = Math.max(( json.rank / ( 3 * nbPlayer ) ) * 100, 0)
          console.log(widthRank)
          document.querySelector(categoryId).style.width = `${widthRank}%`;
        }
        if (json.head == 302 && json.path) {
          setTimeout(() => {
            window.location.pathname = json.path;
          }, 5000);
          // const link = `<a url="${json.path}"></a>`
        }
        if (json.name) {
          const ampoule = document.querySelector(`#${json.name}`)
          if (ampoule) {
            ampoule.classList.remove('container-player-off')
            ampoule.classList.add('container-player-on')
          } else {
            const containerPlayer = document.querySelector('.container-joueurs-pret')
            containerPlayer.insertAdjacentHTML('beforend', `<div id="${json.name}" class="container-player-on">
          <i class="far fa-lightbulb"></i><div class="picto3">${json.name}</div>
        </div>`)
          }
        }
      },
    });
  }
  if (persoContainer) {
    consumer.subscriptions.create({ channel: "RoomChannel", id: persoContainer.dataset.roomId }, {
      received(data) {
        const json = JSON.parse(data)
        console.log(json)
        if (json.name) {
          const bonhommeGris = document.querySelector('.bonhomme-gris')
          const bonhommeVert = document.querySelector('.bonhomme-vert')
          bonhommeVert.nextElementSibling.insertAdjacentText('beforeend', json.name );
          bonhommeGris.classList.remove('bonhomme-gris')
          bonhommeGris.classList.add('bonhomme-vert')
        }
        if (json.ready) {
          document.querySelector('#ready').style.opacity = 1
        }
      }
    })
  }

}

export { initRoomCable };
