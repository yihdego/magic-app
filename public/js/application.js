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

  $('.search-button').on("click", function (event){
    event.preventDefault();
    const $clicked = $(event.currentTarget)
    const url = $clicked.closest('form').attr("action");
    const cardName = $('.input-field').find('input[name]').val();
    const data = {card_name: cardName}
    const jax = $.ajax({
      url,
      data
    })
    debugger
    jax.done((response) => {
      $(".card-show").remove()
      $clicked.closest('div').append(response)
    })
  })
});
