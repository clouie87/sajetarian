$(function() {
  showMenuButton = '[data-behaviour~=show-hamburger-menu]';
  closeMenuButton = '[data-behaviour~=hide-hamburger-menu]';

  $(document).on('click', showMenuButton, openHambugerMenu);
  $(document).on('click', closeMenuButton, closeHambugerMenu);

  $(showMenuButton).show();
  $('.nav-items').hide();

  function openHambugerMenu() {
    $(showMenuButton).hide();
    $('.nav-items').show();
    $(closeMenuButton).show();
  }

  function closeHambugerMenu() {
    $('.nav-items').hide();
    $(showMenuButton).show();
    $(closeMenuButton).hide();
  }
});
