/**
 * 
 */
document.addEventListener("DOMContentLoaded", () => {
  const carousel = document.getElementById('carousel-cards');
  const totalCards = 18;
  const getCardWidth = () => (window.innerWidth <= 768 ? 402 : 402);
  let cardIndex = 0;
  let cardWidth = getCardWidth();

  document.getElementById('nextBtn').addEventListener('click', () => {
    cardIndex = (cardIndex + 1) % totalCards;
    carousel.style.transform = `translateX(${-cardIndex * cardWidth}px)`;
  });

  document.getElementById('prevBtn').addEventListener('click', () => {
    cardIndex = (cardIndex - 1 + totalCards) % totalCards;
    carousel.style.transform = `translateX(${-cardIndex * cardWidth}px)`;
  });
});
