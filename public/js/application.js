$(document).ready(function () {
  $(window).scroll(function(){
    var scrollTop = $(window).scrollTop();
    if (scrollTop > 49) {
        $('body').addClass('header-fixed');
    } else {
        $('body').removeClass('header-fixed');
    }
  });
  
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
    jax.done((response) => {
      $(".card-show").remove()
      $clicked.closest('div').append(response)
    })
  })

  $('div.add-entry').on("submit", "form", (event) => {
    event.preventDefault();
    const $submit = $(event.currentTarget)
    const url = $submit.attr("action");
    const cardQuantity = $('.quantity-field').val();
    const cardName = $('.card_name-field').val();
    const data = {quantity: cardQuantity, card_name: cardName};
    const jax = $.ajax({
      url,
      data,
      method: 'PUT'
    })
    jax.done((response) => {
      console.log(response)
      $("ul").last("li").append(response);
    })
    .fail((response) => {
      // const errors = response.responseJSON.errors;
      console.log(response)
      const errors = JSON.parse(response.responseText);
      const array = Object.values(errors);
      const error = array[0][0]
      $submit.next().html(error)
    })
  })
});
