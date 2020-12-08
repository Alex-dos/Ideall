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
          console.log(categoryId)
          document.querySelector(categoryId).innerText = json.rank
          // document.querySelector(categoryId).style.backgroundColor = json.rank
        }
        if (json.head == 302 && json.path) {
          window.location.pathname = json.path;
          // const link = `<a url="${json.path}"></a>`
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
          const categoryId = `#name`
          document.querySelector(categoryId).insertAdjacentText('beforeend', json.name + " " );
        }
      }
    })
  }

}

export { initRoomCable };
