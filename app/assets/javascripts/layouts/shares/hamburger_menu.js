$(function() {
  showMenuButton = '[data-behaviour~=show-hamburger-menu]';
  closeMenuButton = '[data-behaviour~=hide-hamburger-menu]';

  $(document).on('click touchstart', showMenuButton, openHambugerMenu);
  $(document).on('click touchstart', closeMenuButton, closeHambugerMenu);

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
