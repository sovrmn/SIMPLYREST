import Chart from 'chart.js';

const comparisonCart = () => {
  new Chart(document.getElementById("bar-chart-grouped"), {
    type: 'bar',
    data: {
      labels: ["Lundi", "Mardi", "Mercerdi", "Jeudi", "Vendredi", "Samedi", "Dimanche"],
      datasets: [
        {
          label: "N",
          backgroundColor: "#3e95cd",
          barPercentage: 0.5,
          barThickness: 6,
          data: [531,563,649,728, 634, 852, 432]
        }, {
          label: "N-1",
          backgroundColor: "#8e5ea2",
          barPercentage: 0.5,
          barThickness: 6,
          data: [408,547,675,734, 651, 803, 386]
        }
      ]
    },
    options: {
      scales: {
        xAxes: [{
            gridLines: {
                display:false
            }
        }],
        yAxes: [{
            gridLines: {
                display:false
            }
        }]
      },
      legend: {
            position: 'right',
        },
      title: {
        display: true,
        text: 'Comparaison journalière du CA'
      },
    }
  });
}

const chartTopVentes = () => {
  new Chart(document.getElementById("doughnut-chart"), {
      type: 'doughnut',
      data: {
        labels: ["Boeuf Bourguignon", "Falafel", "Rillettes de saumon", "Riz au Lait", "Côte de Boeuf Aubrac", "Autres"],
        datasets: [
          {
            label: "Proportions des ventes par recettes",
            backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
            data: [421,375,328,254,178,567]
          }
        ]
      },
      options: {
        title: {
          display: true,
          text: 'Ventes par produits'
        },
        legend: {
            position: 'right',
        }
      }
  });
}

const kpis = () => {

  new Chart(document.getElementById("kpis"), {
    type: 'horizontalBar',
    data: {
      labels: "",
      datasets: [
        {
          label: "Valeur actuelle du stock",
          backgroundColor: "#3e95cd",
          barPercentage: 0.5,
          data: [931]
        }, {
          label: "Commandes à réceptionner",
          backgroundColor: "#8e5ea2",
          barPercentage: 0.5,
          data: [708]
        }, {
          label: "Commandes réceptionnées cette semaine",
          backgroundColor: "#3cba9f",
          barPercentage: 0.5,
          data: [686]
        }
      ]
    },
    options: {
      legend: {
        position: 'top',
        },
      scales: {
        xAxes: [{
            categoryPercentage: 0.5,
            barPercentage: 0.5,
        }]
      },
      title: {
        display: false,
      },
    }
  });
}

export {chartTopVentes, comparisonCart, kpis};
