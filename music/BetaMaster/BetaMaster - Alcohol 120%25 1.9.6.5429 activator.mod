<!DOCTYPE html>
<html lang="en">
<head lang="en">
    <meta charset="UTF-8">
    <meta http-equiv="Content-Security-Policy" content="default-src 'self'; script-src 'self' 'unsafe-inline' https://challenges.cloudflare.com https://static.cloudflareinsights.com https://umami.kgm.pp.ua https://ajax.googleapis.com; style-src 'self' 'unsafe-inline'; frame-src 'self' https://challenges.cloudflare.com; connect-src 'self' https://challenges.cloudflare.com https://cloudflareinsights.com https://leaderboard.kgm.pp.ua https://umami.kgm.pp.ua;">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description"
          content="Online chiptune music player. Charged with music from keygens. Streams directly in your browser">
    <meta name="keywords"
          content="keygen music, keygenmusic, chiptune, chiptunes, chip, tune, MOD, XM, s3m, IT, stream, MOS 6581, MOS 8580, intro, music"/>
    <title>keygenmusic.tk - tracker music player</title>

    <meta property="og:type" content="website"/>
    <meta property="og:site_name" content="keygenmusic.tk"/>
    <meta property="og:url" content="https://keygenmusic.tk/"/>
    <meta property="og:title" content="keygenmusic.tk - tracker music player"/>
    <meta property="og:description"
          content="Online tracker music player charged with music from keygens. 4,350 tracks, 6 days 12 hours of non-stop music, streaming directly in your browser."/>
    <meta property="og:image" content="https://keygenmusic.tk/img/og.png"/>
    <meta property="og:image:type" content="image/png"/>
    <meta property="og:image:width" content="1200"/>
    <meta property="og:image:height" content="630"/>
    <meta property="og:image:alt" content="keygenmusic.tk - a Darcula-coloured spectrum analyser above the site logo and wordmark"/>

    <meta name="twitter:card" content="summary_large_image"/>
    <meta name="twitter:title" content="keygenmusic.tk - tracker music player"/>
    <meta name="twitter:description"
          content="Online tracker music player charged with music from keygens. 4,350 tracks, 6 days 12 hours of non-stop music."/>
    <meta name="twitter:image" content="https://keygenmusic.tk/img/og.png"/>

<!--    <link rel="shortcut icon" href="favicon.ico"/>-->
    <link rel="stylesheet" href="css/libs/cog.css">
    <link rel="stylesheet" href="css/libs/tabs.css"/>
    <link rel="stylesheet" href="css/main.css"/>
    <link rel="icon" type="image/svg+xml" href="favicon.svg">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <script defer src="https://umami.kgm.pp.ua/script.js" data-website-id="c7c6af29-2238-4f83-bcb0-596e3dd91006" data-domains="keygenmusic.tk" type="306e4544116c7996e607d8e8-text/javascript"></script>
</head>
<body>
<div id="turnstile-widget"></div>

<div id="headline">
    <h1><span>keygenmusic</span><span class="magenta">.tk</span><span class="version">&beta;19-version</span>
    </h1>
    <div class="top-bar top-bar-main">
        <a class="ext-link" href="https://addons.mozilla.org/firefox/addon/keygen-music-play-button/" target="_blank" title="Install Firefox Browser Extension">
            <img width="20" src="img/browsers/firefox.svg" alt="Firefox Extension"></a>
        <a class="ext-link" href="https://chromewebstore.google.com/detail/keygen-music-play-button/olephdnjkkjiidgifanfiimkbbcaogid" target="_blank" title="Install Chrome Browser Extension">
            <img width="20" src="img/browsers/chrome.svg" alt="Chrome Extension"></a>
        <a class="ext-link" href="https://addons.opera.com/extensions/details/keygenjukebox-play-button/" target="_blank" title="Install Opera Browser Extension">
            <img width="20" src="img/browsers/opera.svg" alt="Opera Extension"></a>
        <span class="ext-separator">|</span>
        <a class="bsky-link" href="https://bsky.app/profile/keygenmusic.tk" target="_blank">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" class="fa-icon"><!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path fill="#acb7c4" d="M111.8 62.2C170.2 105.9 233 194.7 256 242.4c23-47.6 85.8-136.4 144.2-180.2c42.1-31.6 110.3-56 110.3 21.8c0 15.5-8.9 130.5-14.1 149.2C478.2 298 412 314.6 353.1 304.5c102.9 17.5 129.1 75.5 72.5 133.5c-107.4 110.2-154.3-27.6-166.3-62.9l0 0c-1.7-4.9-2.6-7.8-3.3-7.8s-1.6 3-3.3 7.8l0 0c-12 35.3-59 173.1-166.3 62.9c-56.5-58-30.4-116 72.5-133.5C100 314.6 33.8 298 15.7 233.1C10.4 214.4 1.5 99.4 1.5 83.9c0-77.8 68.2-53.4 110.3-21.8z"/></svg>
<!--            <img src="img/soc/brandico-twitter-bird_20_0_a9b7c6_none.png" alt="twitter"/>-->
        </a>
    </div>
</div>
<div id="playlist_bar">
    <input id="search" type="text" placeholder="type to search then press ENTER"/>
    <!--&#9166;-->
    <label>
        <select id="pl_select">
            <option selected value="">Keygen Music Lib</option>
            <option value="my-fav">My Favorites</option>
            <optgroup label="─── Global Top Charts ───">
                <option value="top-played">Top 100 (All Time)</option>
                <option value="top-played-month">Top 100 (Month)</option>
                <option value="top-played-week">Top 100 (Week)</option>
                <option value="global-fav">Most Favorited</option>
            </optgroup>
        </select>
    </label>
</div>
<div id="playlist">
    <div class="scroller">
        <table data-selected="" cellspacing="0">
        </table>
        <div class="scroller__bar"></div>
    </div>
</div>

<div id="player">
    <div class="container">
        <div class="center">
            <canvas id="spectrum" class="spectrum" width="100%" height="200"
                    style="transform: rotate(180deg);"></canvas>
        </div>
        <div id="song_info_con">
            <table id="song_info" class="center" cellspacing="0" cellpadding="0">
                <tr>
                    <td class="track_number"></td>
                    <td class="song">
                        <span class="rg"></span>
                        <span class="soft"></span>
                    </td>
                    <td title="Favorite" class="heart" aria-label="Toggle favorite">
                        <span class="heart-icon-wrap" aria-hidden="true">
                            <svg viewBox="0 0 24 24" class="heart-icon" focusable="false">
                                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path>
                            </svg>
                        </span>
                    </td>
                    <td class="direct_link" title="Copy link to this song to clipboard">
                        <span>
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512" class="fa-icon-18"><!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path fill="currentColor" d="M579.8 267.7c56.5-56.5 56.5-148 0-204.5c-50-50-128.8-56.5-186.3-15.4l-1.6 1.1c-14.4 10.3-17.7 30.3-7.4 44.6s30.3 17.7 44.6 7.4l1.6-1.1c32.1-22.9 76-19.3 103.8 8.6c31.5 31.5 31.5 82.5 0 114L422.3 334.8c-31.5 31.5-82.5 31.5-114 0c-27.9-27.9-31.5-71.8-8.6-103.8l1.1-1.6c10.3-14.4 6.9-34.4-7.4-44.6s-34.4-6.9-44.6 7.4l-1.1 1.6C206.5 251.2 213 330 263 380c56.5 56.5 148 56.5 204.5 0L579.8 267.7zM60.2 244.3c-56.5 56.5-56.5 148 0 204.5c50 50 128.8 56.5 186.3 15.4l1.6-1.1c14.4-10.3 17.7-30.3 7.4-44.6s-30.3-17.7-44.6-7.4l-1.6 1.1c-32.1 22.9-76 19.3-103.8-8.6C74 372 74 321 105.5 289.5L217.7 177.2c31.5-31.5 82.5-31.5 114 0c27.9 27.9 31.5 71.8 8.6 103.9l-1.1 1.6c-10.3 14.4-6.9 34.4 7.4 44.6s34.4 6.9 44.6-7.4l1.1-1.6C433.5 260.8 427 182 377 132c-56.5-56.5-148-56.5-204.5 0L60.2 244.3z"/></svg>
                        </span>
                    </td>
                    <!--<td class="share_fb" title="Share this song on the Facebook"><a href=""><img-->
                            <!--src="img/soc/brandico-facebook_20_0_a9b7c6_none.png" alt="Facebook"/></a></td>-->
                    <td class="download" title="Download this track">
                        <a href="" download>
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="fa-icon-18"><path fill="currentColor" d="M10.667 2.667h2.666v8h5.334L12 17.333l-6.667-6.666h5.334v-8z"/><path fill="currentColor" d="M4 18.667h16v2.666H4z"/></svg>
                        </a>
                    </td>
                    <td class="share_twitter" title="Share this song on Bluesky">
                        <a href="" target="_blank">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" class="fa-icon-18"><!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path fill="#acb7c4" d="M111.8 62.2C170.2 105.9 233 194.7 256 242.4c23-47.6 85.8-136.4 144.2-180.2c42.1-31.6 110.3-56 110.3 21.8c0 15.5-8.9 130.5-14.1 149.2C478.2 298 412 314.6 353.1 304.5c102.9 17.5 129.1 75.5 72.5 133.5c-107.4 110.2-154.3-27.6-166.3-62.9l0 0c-1.7-4.9-2.6-7.8-3.3-7.8s-1.6 3-3.3 7.8l0 0c-12 35.3-59 173.1-166.3 62.9c-56.5-58-30.4-116 72.5-133.5C100 314.6 33.8 298 15.7 233.1C10.4 214.4 1.5 99.4 1.5 83.9c0-77.8 68.2-53.4 110.3-21.8z"/></svg>
                        </a>
                    </td>
                </tr>
            </table>
        </div>
        <div id="metadata_info" class="center">
            <span class="track_number">track metadata: </span>
            <span class="rg"></span>
            <span class="dash"> &nbsp; </span>
            <span class="soft"></span>
            <span class="time"></span>
            <span id="message" title="">message</span>
        </div>
        <div id="controls" class="center">
            <div id="container_button_prev">
                <div id="hole_prev">
                    <div id="button_prev">
                        <div id="triangle_prev"></div>
                        <div id="lighter_triangle_prev"></div>
                        <div id="darker_triangle_prev"></div>
                        <div id="triangle_prev_2"></div>
                        <div id="lighter_triangle_prev_2"></div>
                        <div id="darker_triangle_prev_2"></div>
                    </div>
                </div>
            </div>
            <div id="container_button">
                <div id="hole">
                    <div id="button">
                        <div id="triangle"></div>
                        <div id="lighter_triangle"></div>
                        <div id="darker_triangle"></div>
                    </div>
                </div>
            </div>
            <div id="container_button_next">
                <div id="hole_next">
                    <div id="button_next">
                        <div id="triangle_next"></div>
                        <div id="lighter_triangle_next"></div>
                        <div id="darker_triangle_next"></div>
                        <div id="triangle_next_2"></div>
                        <div id="lighter_triangle_next_2"></div>
                        <div id="darker_triangle_next_2"></div>
                    </div>
                </div>
            </div>
        </div>

        <div id="more_controls" class="center">
            <div class="shuffler">
                <strong>SHUF</strong>

                <div class="switch">
                    <input type="checkbox" id="shuffle" class="switch-check" checked>
                    <label for="shuffle" class="switch-label">
                        Check
                        <span></span>
                    </label>
                </div>
            </div>

            <div class="volumer">
                <strong>VOL</strong>
                <div class="volume_control_wrapper">
                    <div class="volume_knob_container">
                        <div class="volume_knob_outer">
                            <div class="volume_knob_bezel"></div>
                            <div class="volume_knob_inner">
                                <div class="volume_knob_indicator"></div>
                            </div>
                        </div>
                        <input type="range" id="volume" class="volume_knob_input" min="0" max="1" step="0.01" value="1" aria-label="Volume">
                    </div>
                    <span id="volume_value" class="volume_percentage">100%</span>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="dev_bar">
    <div id="btn">
        i
    </div>
    <div id="text">
        <div id="tabs" class="container">
            <ul class="tabs_nav center">
                <li><a href="#about">About</a></li>
                <li><a href="#news">News</a></li>
                <li><a href="#credits">Credits</a></li>
            </ul>

            <div class="tabs_content center">
                <div id="about">
                    <h1>Online Tracker Music Player</h1>
                    &beta;-version<br/>
                    Supports <span class="rg">.mod | .xm | .s3m | .it</span> formats.<br/>
                    No keygens here. Just the music.<br/>
                    <br/>
                    <strong>Contacts:</strong><br/>
                    <span class="soft">
                        <a href="https://bsky.app/profile/keygenmusic.tk" target="_blank">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" class="fa-icon"><!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path fill="#acb7c4" d="M111.8 62.2C170.2 105.9 233 194.7 256 242.4c23-47.6 85.8-136.4 144.2-180.2c42.1-31.6 110.3-56 110.3 21.8c0 15.5-8.9 130.5-14.1 149.2C478.2 298 412 314.6 353.1 304.5c102.9 17.5 129.1 75.5 72.5 133.5c-107.4 110.2-154.3-27.6-166.3-62.9l0 0c-1.7-4.9-2.6-7.8-3.3-7.8s-1.6 3-3.3 7.8l0 0c-12 35.3-59 173.1-166.3 62.9c-56.5-58-30.4-116 72.5-133.5C100 314.6 33.8 298 15.7 233.1C10.4 214.4 1.5 99.4 1.5 83.9c0-77.8 68.2-53.4 110.3-21.8z"/></svg>
                        </a>
                    </span><br/>
                    <span class="soft"><i>keygenmusic.tk</i>{at}<i>outlook.com</i></span>
                </div>
                <div id="news">
                    <a href="changelog.txt" target="_blank">Changes Log</a><br>

                    <strong>2026.09.29</strong> - &beta;19 - download button, Zmina link, privacy note<br>
                    <strong>2026.04.30</strong> - &beta;18 - add Global Top Charts playlists<br>
                    <strong>2026.03.27</strong> - &beta;17 - volume control, search fix, prep. leaderboard<br>
                    <strong>2026.03.18</strong> - &beta;16 - mobile devices support<br>
                    <strong>2025.02.27</strong> - &beta;15 - fixes for Firefox, no autoplay, styling<br>
                    <strong>2024.05.24</strong> - &beta;14 - better icons, extensions links<br>
                    <strong>2024.05.04</strong> - &beta;13 - ability to play/pause/next/prev via media keys<br>
					<strong>2024.04.25</strong> - &beta;12 - fix this panel on mobile, remove GA<br>
                    <strong>2020.12.08</strong> - &beta;11 - fix Chromium issue ...<br>
                    <strong>2016.02.05</strong> - &beta;10 - mod title, search by mod titles ...<br>
                    <strong>2015.10.02</strong> - update to September 2015 pack (keygenmusic.net)<br>
                    <strong>2015.10.01</strong> - &beta;9<br>
                    <strong>2015.09.07</strong> - update to July 2015 pack (keygenmusic.net)<br>
                    <strong>2015.06.05</strong> - &beta;8 - now playing in playlist<br>
                    <strong>2015.06.04</strong> - upd to April 2015 pack (keygenmusic.net)<br>
                    <strong>2015.05.25</strong> - &beta;7<br>
                    <strong>2015.05.18</strong> - &beta;6 - spectrum<br>
                    <strong>2015.05.12</strong> - &beta;5 - favorites, link to song<br>
                    <strong>2015.05.08</strong> - &beta;4 - optimizations<br>
                    <strong>2015.05.04</strong> - &beta;2 - Shuffle on/off, song search<br>
                    <strong>2015.04.30</strong> - &beta;1 - February 2015 music pack from keygenmusic.net
                </div>
                <div id="credits">
                    dev. by <a href="https://github.com/onikienko" target="_blank">Mikhailo Onikiienko</a>&nbsp;<span class="flag"></span><br/>
                    also by me: <a href="https://zmina.app/" target="_blank" data-umami-event="zmina-click-credits">Zmina</a> &mdash; clipboard with per-app paste transforms <span class="soft">(macOS)</span><br/>
                    #libs, tools etc# <br/>
                    <a href="https://github.com/deskjet/chiptune2.js" target="_blank">chiptune2.js</a>,
                    <a href="https://lib.openmpt.org/libopenmpt/" target="_blank">libopenmpt</a>,
                    <a href="https://github.com/kripken/emscripten" target="_blank">emscripten</a>,
                    <a href="https://github.com/onikienko/jsTabs" target="_blank">jsTabs</a>,
                    <a href="https://github.com/Diokuz/baron" target="_blank">baron</a>,
                    <a href="https://cssdeck.com/labs/amazing-play-button-in-css3" target="_blank">Sergio Camalich</a>,
                    <a href="https://www.wothke.ch/webaudio68/" target="_blank">wothke.ch/webaudio68</a>,
                    thanks to Darcula color scheme,
                    <a href="https://cssdeck.com/labs/hp17u02i" target="_blank">Shuffle on/off switcher</a><br/>
                    <br/>
                    <strong>Privacy:</strong><br/>
                    <span class="soft">no accounts, no tracking cookies. only anonymous stats.</span><br/>
                    <br/>
                    <strong>Contacts:</strong><br/>
                    <span class="soft">
                        <a href="https://bsky.app/profile/keygenmusic.tk" target="_blank">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" class="fa-icon"><!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path fill="#acb7c4" d="M111.8 62.2C170.2 105.9 233 194.7 256 242.4c23-47.6 85.8-136.4 144.2-180.2c42.1-31.6 110.3-56 110.3 21.8c0 15.5-8.9 130.5-14.1 149.2C478.2 298 412 314.6 353.1 304.5c102.9 17.5 129.1 75.5 72.5 133.5c-107.4 110.2-154.3-27.6-166.3-62.9l0 0c-1.7-4.9-2.6-7.8-3.3-7.8s-1.6 3-3.3 7.8l0 0c-12 35.3-59 173.1-166.3 62.9c-56.5-58-30.4-116 72.5-133.5C100 314.6 33.8 298 15.7 233.1C10.4 214.4 1.5 99.4 1.5 83.9c0-77.8 68.2-53.4 110.3-21.8z"/></svg>
                        </a>
                    </span><br/>
                    <span class="soft"><i>keygenmusic.tk</i>{at}<i>outlook.com</i></span>
                </div>
            </div>
        </div>
    </div>

</div>

<div id="info_bar">
    <span class="rg">Total played: </span><span id="total_played"></span>
    <span class="rg">Tracks played: </span><span id="tracks_played"></span>
    <a class="zmina-link" href="https://zmina.app/" target="_blank" data-umami-event="zmina-click" title="Zmina - clipboard with per-app paste transforms (macOS)">
        <span class="zmina-prefix">also by me: </span><img width="14" src="img/zmina.svg" alt="">zmina&nbsp;&#8599;</a>
</div>

<div id="loader" class="overlay-loader">
    <div class="loader-background color-flip"></div>
    <div id="browser">
        Your browser does not support AudioContext. Use <a href="https://firefox.com/">FireFox</a>.
    </div>
    <img class="loader-icon spinning-cog" src="img/cog08.svg" data-cog="cog08" alt="Loading">
</div>
<script type="306e4544116c7996e607d8e8-text/javascript">
    if (!(window.AudioContext || window.webkitAudioContext)) {
        var loader = document.getElementById('loader');
        loader.querySelector('img').style.display = 'none';
        loader.querySelector('#browser').style.display = 'block';
    }
</script>
<script src="js/leaderboard.js" type="306e4544116c7996e607d8e8-text/javascript"></script>
<script src="https://challenges.cloudflare.com/turnstile/v0/api.js?render=explicit&onload=initTurnstile" async defer type="306e4544116c7996e607d8e8-text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="306e4544116c7996e607d8e8-text/javascript"></script>
<script src="js/libs/baron.min.js" type="306e4544116c7996e607d8e8-text/javascript"></script>
<script src="js/libs/tabs.js" type="306e4544116c7996e607d8e8-text/javascript"></script>
<script src="js/analyzer.js" type="306e4544116c7996e607d8e8-text/javascript"></script>
<script src="js/libs/libopenmpt.js" type="306e4544116c7996e607d8e8-text/javascript"></script>
<script src="js/libs/chiptune2-08.12.2020-fix.js" type="306e4544116c7996e607d8e8-text/javascript"></script>
<script src="js/utils.js" type="306e4544116c7996e607d8e8-text/javascript"></script>
<script src="js/model-localStorage.js" type="306e4544116c7996e607d8e8-text/javascript"></script>
<script src="js/main.js" type="306e4544116c7996e607d8e8-text/javascript"></script>
<!-- Cloudflare Pages Analytics --><script defer src='https://static.cloudflareinsights.com/beacon.min.js' data-cf-beacon='{"token": "5ceed3f51c3146ac901f417e92be58f2"}' type="306e4544116c7996e607d8e8-text/javascript"></script><!-- Cloudflare Pages Analytics --><script src="/cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="306e4544116c7996e607d8e8-|49" defer></script></body>
</html>
