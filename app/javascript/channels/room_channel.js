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
        const categoryId = `#result-${json.category}`
        console.log(categoryId)
        document.querySelector(categoryId).innerText = json.rank
      },
    });
  }
  if (persoContainer) {
    consumer.subscriptions.create({ channel: "RoomChannel", id: persoContainer.dataset.roomId }, {
      received(name) {
        console.log(name)
      }
    })
  }
}

export { initRoomCable };