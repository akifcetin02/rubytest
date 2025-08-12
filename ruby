<!DOCTYPE html>
<html lang="tr">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Bahis Giriş Portalı</title>
  <style>
    body {
      margin: 0;
      font-family: sans-serif;
      background-color: #120016;
      color: #fff;
    }

    .container {
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 10px;
    }

    .top-bar {
      width: 100%;
      display: flex;
      justify-content: center;
      margin-bottom: 10px;
    }

    .logo {
      width: 120px;
      cursor: pointer;
    }

    .banner {
      width: 100%;
      max-width: 600px;
      margin: 10px auto 5px;
      cursor: pointer;
      display: block;
    }

    .banner-text {
      text-align: center;
      font-weight: bold;
      font-size: 18px;
      margin-bottom: 10px;
      cursor: pointer;
      color: #ffda58;
      text-decoration: underline;
    }

    .filter-buttons {
      display: flex;
      justify-content: center;
      gap: 10px;
      margin: 10px 0;
      flex-wrap: wrap;
    }

    .filter-buttons button {
      padding: 8px 16px;
      border: none;
      background-color: #ffda58;
      color: #000;
      font-weight: bold;
      border-radius: 6px;
      cursor: pointer;
      transition: background-color 0.2s;
    }

    .filter-buttons button.selected,
    .filter-buttons button:hover {
      background-color: #ffc107;
    }

    .search-box {
      margin-bottom: 15px;
      text-align: center;
      width: 100%;
    }

    .search-box input {
      padding: 8px 12px;
      border-radius: 6px;
      border: none;
      font-size: 16px;
      width: 100%;
      max-width: 400px;
    }

    .main-content {
      display: flex;
      width: 100%;
      max-width: 1200px;
    }

    .sidebar {
      width: 120px;
      margin: 0 10px;
    }

    .sidebar img {
      width: 100%;
      margin-bottom: 10px;
      cursor: pointer;
    }

    .games {
      flex: 1;
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 10px;
      justify-items: center;
      align-items: start;
    }

    .game {
      background-color: #1e1e2f;
      border-radius: 10px;
      text-align: center;
      padding: 4px;
      cursor: pointer;
      transition: transform 0.2s;
      width: 100%;
    }

    .game:hover {
      transform: scale(1.05);
    }

    .game img {
      display: block;
      width: 100%;
      height: auto;
      object-fit: contain;
      border-radius: 8px;
      margin: 0;
    }

    .game-title {
      margin-top: 2px;
      margin-bottom: 2px;
      font-size: 14px;
    }

    @media (max-width: 768px) {
      .games {
        grid-template-columns: repeat(2, 1fr);
      }

      .sidebar {
        display: none;
      }
    }

    @media (max-width: 480px) {
      .games {
        grid-template-columns: repeat(2, 1fr);
      }
    }

    /* === POPUP === */
    .popup {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      display: none;
      justify-content: center;
      align-items: center;
      z-index: 9999;
    }

    .popup-overlay {
      position: absolute;
      width: 100%;
      height: 100%;
      background-color: rgba(0,0,0,0.6);
    }

    .popup-content {
      position: relative;
      max-width: 90%;
      max-height: 80%;
      z-index: 10000;
    }

    .popup-content img {
      width: 100%;
      height: auto;
      border-radius: 12px;
      box-shadow: 0 0 15px rgba(0,0,0,0.8);
      cursor: pointer;
    }

    .popup-close {
      position: absolute;
      top: -10px;
      right: -10px;
      background: #ff3333;
      color: white;
      border: none;
      border-radius: 50%;
      width: 28px;
      height: 28px;
      font-size: 18px;
      cursor: pointer;
    }
  </style>
</head>
<body>

  <div class="container">

    <!-- Logo -->
    <div class="top-bar">
      <img class="logo" src="https://i.imgur.com/H3WSlLm.png" alt="Logo" onclick="window.location.href='https://t.ly/oTfAf'"/>
    </div>

    <!-- Banner -->
    <img class="banner" src="https://i.imgur.com/NLuxoos.gif" alt="Banner" onclick="window.location.href='https://t.ly/oTfAf'" />

    <!-- Banner Altı Yazı -->
    <div class="banner-text" onclick="window.location.href='https://t.ly/oTfAf'">
      BAHİSBU GİRİŞ
    </div>

    <!-- Kategori Butonları -->
    <div class="filter-buttons">
      <button data-category="all" class="selected" onclick="selectCategory(this)">Tümü</button>
      <button data-category="ruby" onclick="selectCategory(this)">Ruby Play</button>
      <button data-category="pragmatic" onclick="selectCategory(this)">Pragmatic Play</button>
    </div>

    <!-- Arama Kutusu -->
    <div class="search-box">
      <input type="text" id="searchInput" placeholder="Oyun ara..." onkeyup="filterGames()">
    </div>

    <!-- Content: Sidebar + Games -->
    <div class="main-content">

      <!-- Left Ads -->
      <div class="sidebar">
        <img src="https://i.imgur.com/q78TKVe.gif" alt="Ad 1" onclick="window.location.href='https://t.ly/oTfAf'"/>
        <img src="https://i.imgur.com/q78TKVe.gif" alt="Ad 2" onclick="window.location.href='https://t.ly/oTfAf'"/>
      </div>

      <!-- Games -->
      <div class="games" id="gamesList">

         <!-- Ruby Play Games -->

	<div class="game" data-category="ruby" onclick="window.open('https://bahisbu272.com/tr/game/ruby-play/gummy-giga-match?demo=true', '_blank')">
      <img src="https://i.imgur.com/NNbZLfo.gif" alt="Gummy Giga Match" />
      <div class="game-title">Gummy Giga Match</div>
	</div>

	<div class="game" data-category="ruby" onclick="window.open('https://bahisbu272.com/tr/game/ruby-play/giga-matcha-egypt?demo=true', '_blank')">
      <img src="https://i.imgur.com/uTNonyR.gif" alt="Giga Match Egypt" />
      <div class="game-title">Giga Match Egypt</div>
	</div>

	<div class="game" data-category="ruby" onclick="window.open('https://bahisbu272.com/tr/game/ruby-play/j-mania-3-buffalo?demo=true', '_blank')">
      <img src="https://i.imgur.com/AYzS2gp.gif" alt="J Mania 3 Buffalo" />
      <div class="game-title">J Mania 3 Buffalo</div>
	</div>

 	<div class="game" data-category="ruby" onclick="window.open('https://bahisbu272.com/tr/game/ruby-play/mayan-cache?demo=true', '_blank')">
      <img src="https://i.imgur.com/i4M7xqd.gif" alt="Mayan Cache" />
      <div class="game-title">Mayan Cache</div>
    </div>

	 <div class="game" data-category="ruby" onclick="window.open('https://bahisbu272.com/tr/game/ruby-play/diamond-explosion-7s-se?demo=true', '_blank')">
      <img src="https://i.imgur.com/9vMo0Nk.gif" alt="Diamond Explosion 7s" />
      <div class="game-title">Diamond Explosion 7s</div>
    </div>

	<div class="game" data-category="ruby" onclick="window.open('https://bahisbu272.com/tr/game/ruby-play/mad-hit-marlin-bonanza?demo=true', '_blank')">
          <img src="https://i.imgur.com/piGQmZb.gif" alt="Mad Hit Marlin Bonanza" />
          <div class="game-title">Mad Hit Marlin Bonanza</div>
	</div>

        <div class="game" data-category="ruby" onclick="window.open('https://bahisbu272.com/tr/game/ruby-play/ancient-pharoah?demo=true', '_blank')">
          <img src="https://i.imgur.com/c0y6tTU.gif" alt="Ancient Pharoah" />
          <div class="game-title">Ancient Pharoah</div>
    </div>    

	<div class="game" data-category="ruby" onclick="window.open('https://bahisbu272.com/tr/game/ruby-play/lady-phoenix?demo=true', '_blank')">
          <img src="https://i.imgur.com/AGiExBy.gif" alt="Lady Phoenix" />
          <div class="game-title">Lady Phoenix</div>
    </div>

        <div class="game" data-category="ruby" onclick="window.open('https://bahisbu272.com/tr/game/ruby-play/savannah-mad-hit?demo=true', '_blank')">
          <img src="https://i.imgur.com/ETo78fQ.gif" alt="Mad Hit Savannah" />
          <div class="game-title">Mad Hit Savannah</div>
  </div>      

	<div class="game" data-category="ruby" onclick="window.open('https://bahisbu272.com/tr/game/ruby-play/giga-match-north-pole?demo=true', '_blank')">
          <img src="https://i.imgur.com/pBRwZKn.gif" alt="Giga Match Fruits" />
          <div class="game-title">Giga Match Fruits</div>
   </div> 

	<div class="game" data-category="ruby" onclick="window.open('https://bahisbu272.com/tr/game/ruby-play/sweet-love-diamond-explotion?demo=true', '_blank')">
      <img src="https://i.imgur.com/ttwCYIW.gif" alt="Sweet Love Diamond Explosion" />
      <div class="game-title">Sweet Love Diamond Explosion</div>
	</div> 

	<div class="game" data-category="ruby" onclick="window.open('https://bahisbu272.com/tr/game/ruby-play/vegas-no-limit-wins-se?demo=true', '_blank')">
      <img src="https://i.imgur.com/DNVazHN.gif" alt="Vegas No Limit Wins SE" />
      <div class="game-title">Vegas No Limit Wins SE</div>
	</div>   

	<div class="game" data-category="ruby" onclick="window.open('https://bahisbu272.com/tr/game/ruby-play/go-high-puppy-love?demo=true', '_blank')">
      <img src="https://i.imgur.com/bgzCTkt.gif" alt="Go High Puppy Love" />
      <div class="game-title">Go High Puppy Love</div>
	</div>

	<div class="game" data-category="ruby" onclick="window.open('https://bahisbu272.com/tr/game/ruby-play/ten-ton-ways-goldfish?demo=true', '_blank')">
          <img src="https://i.imgur.com/vEWPmV7.gif" alt="Ten Ton Ways Goldfish" />
          <div class="game-title">Ten Ton Ways Goldfish</div>
  </div>      

	<div class="game" data-category="ruby" onclick="window.open('https://bahisbu272.com/tr/game/ruby-play/immortal-ways-volcano?demo=true', '_blank')">
          <img src="https://i.imgur.com/vEWPmV7.gif" alt="Immortal Ways Volcano" />
          <div class="game-title">Immortal Ways Volcano</div>
  </div>

	<div class="game" data-category="ruby" onclick="window.open('https://bahisbu272.com/tr/game/ruby-play/ten-ton-ways-goldfish?demo=true', '_blank')">
          <img src="https://i.imgur.com/dnfOs81.gif" alt="Immortal Ways Cleopatra" />
          <div class="game-title">Immortal Ways Cleopatra</div>
</div>        

	<div class="game" data-category="ruby" onclick="window.open('https://bahisbu272.com/tr/game/ruby-play/go-high-gallina?demo=true', '_blank')">
          <img src="https://i.imgur.com/gqOXGZi.gif" alt="Go High Gallina" />
          <div class="game-title">Go High Gallina</div>
</div>
                <!-- Pragmatic Games -->
        <div class="game" data-category="pragmatic" onclick="window.open('https://bahisbu272.com/tr/game/pragmatic/gates-of-olympus-super-scatter?demo=true', '_blank')">
          <img src="https://i.imgur.com/Vg6OJU9.png" alt="Gates of Olympus Super Scatter" />
          <div class="game-title">Gates of Olympus Super Scatter</div>
        </div>

        <div class="game" data-category="pragmatic" onclick="window.open('https://bahisbu272.com/tr/game/pragmatic/club-tropicana?demo=true', '_blank')">
          <img src="https://i.imgur.com/XzTu60o.png" alt="Club Tropicana - Happy Hour" />
          <div class="game-title">Club Tropicana - Happy Hour</div>
        </div>

        <div class="game" data-category="pragmatic" onclick="window.open('https://bahisbu272.com/tr/game/pragmatic/gold-party-2-after-hours?demo=true', '_blank')">
          <img src="https://i.imgur.com/UilKjXi.png" alt="Gold Party 2 - After Hours" />
          <div class="game-title">Gold Party 2 - After Hours</div>
        </div>

        <div class="game" data-category="pragmatic" onclick="window.open('https://bahisbu272.com/tr/game/pragmatic/fortune-of-aztec?demo=true', '_blank')">
          <img src="https://i.imgur.com/2qYDs97.png" alt="Fortune Of Aztec" />
          <div class="game-title">Fortune Of Aztec</div>
        </div>

        <div class="game" data-category="pragmatic" onclick="window.open('https://bahisbu272.com/tr/game/pragmatic/alien-invaders?demo=true', '_blank')">
          <img src="https://i.imgur.com/bbVLKCC.png" alt="Alien Invaders" />
          <div class="game-title">Alien Invaders</div>
        </div>

        <div class="game" data-category="pragmatic" onclick="window.open('https://bahisbu272.com/tr/game/pragmatic/waves-of-poseidon?demo=true', '_blank')">
          <img src="https://i.imgur.com/xGOKnYd.png" alt="Waves of Poseidon" />
          <div class="game-title">Waves of Poseidon</div>
        </div>

        <div class="game" data-category="pragmatic" onclick="window.open('https://bahisbu272.com/tr/game/pragmatic/gem-fire-fortune?demo=true', '_blank')">
          <img src="https://i.imgur.com/SXUDnBg.png" alt="Gem Fire Fortune" />
          <div class="game-title">Gem Fire Fortune</div>
        </div>

        <div class="game" data-category="pragmatic" onclick="window.open('https://bahisbu272.com/tr/game/pragmatic/pig-farm?demo=true', '_blank')">
          <img src="https://i.imgur.com/AviKOj5.png" alt="Pig Farm" />
          <div class="game-title">Pig Farm</div>
        </div>

      </div>

      <!-- Right Ads -->
      <div class="sidebar">
        <img src="https://i.imgur.com/q78TKVe.gif" alt="Ad 3" onclick="window.location.href='https://t.ly/oTfAf'"/>
        <img src="https://i.imgur.com/q78TKVe.gif" alt="Ad 4" onclick="window.location.href='https://t.ly/oTfAf'"/>
      </div>

    </div>

  </div>

  <!-- POPUP -->
  <div id="popup" class="popup">
    <div class="popup-overlay" onclick="closePopup()"></div>
    <div class="popup-content">
      <img src="https://i.imgur.com/2SJFvtz.jpeg" alt="Popup Görseli" onclick="window.location.href='https://t.ly/oTfAf'">
      <button class="popup-close" onclick="closePopup()">×</button>
    </div>
  </div>

  <!-- JavaScript -->
  <script>
    function selectCategory(btn) {
      document.querySelectorAll(".filter-buttons button").forEach(b => b.classList.remove("selected"));
      btn.classList.add("selected");
      filterGames();
    }

    function filterGames() {
      const input = document.getElementById("searchInput").value.toLowerCase();
      const selectedCategory = document.querySelector(".filter-buttons .selected").dataset.category;
      const games = document.querySelectorAll(".game");

      games.forEach(game => {
        const title = game.querySelector(".game-title").innerText.toLowerCase();
        const gameCategory = game.getAttribute("data-category");
        const matchesCategory = (selectedCategory === "all" || gameCategory === selectedCategory);
        const matchesSearch = title.includes(input);
        game.style.display = (matchesCategory && matchesSearch) ? "block" : "none";
      });
    }

    window.addEventListener('load', () => {
      document.getElementById('popup').style.display = 'flex';
    });

    function closePopup() {
      document.getElementById('popup').style.display = 'none';
    }
  </script>

</body>
</html>
