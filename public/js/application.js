$(document).ready(function () {
  $('.card-link').on('click', function (event){
    event.preventDefault();
    const $clicked = $(event.currentTarget)
    const url = $clicked.attr("href");
    $.ajax({
      url
    }).done((response) => {
      $(".card-show").remove()
      $clicked.closest('div').append(response)
    })
  })

  // $('.card-search').on('submit', 'button' function (event){
  //   event.preventDefault();
  // //   const $clicked = $(event.currentTarget)
  // //   const url = $clicked.attr("href");
  // //   $.ajax({
  // //     url
  // //   }).done((response) => {
  // //     $clicked.closest('div').append(response)
  // //   })
  // // })
});
