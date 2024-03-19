import 'dart:convert';

/// albums : {"href":"https://api.spotify.com/v1/search?query=Paradox&type=album&market=TH&offset=0&limit=20","items":[{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"external_urls":{"spotify":"https://open.spotify.com/album/0arxBfmEjM9dUu8fm9WC9n"},"href":"https://api.spotify.com/v1/albums/0arxBfmEjM9dUu8fm9WC9n","id":"0arxBfmEjM9dUu8fm9WC9n","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2736286cdb7819e1cb9c87ced70","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e026286cdb7819e1cb9c87ced70","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048516286cdb7819e1cb9c87ced70","width":64}],"is_playable":true,"name":"Summer","release_date":"2000-05-25","release_date_precision":"day","total_tracks":12,"type":"album","uri":"spotify:album:0arxBfmEjM9dUu8fm9WC9n"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"external_urls":{"spotify":"https://open.spotify.com/album/3waFXalZx4Ca0000kvuMkc"},"href":"https://api.spotify.com/v1/albums/3waFXalZx4Ca0000kvuMkc","id":"3waFXalZx4Ca0000kvuMkc","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2735fcf0aa6b762709da2a23de9","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e025fcf0aa6b762709da2a23de9","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048515fcf0aa6b762709da2a23de9","width":64}],"is_playable":true,"name":"Freestyle","release_date":"2003-09-23","release_date_precision":"day","total_tracks":13,"type":"album","uri":"spotify:album:3waFXalZx4Ca0000kvuMkc"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"external_urls":{"spotify":"https://open.spotify.com/album/75HcP7Zo7NAjJtvbOW5r1F"},"href":"https://api.spotify.com/v1/albums/75HcP7Zo7NAjJtvbOW5r1F","id":"75HcP7Zo7NAjJtvbOW5r1F","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2731610ede8107712fd71dfa1da","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e021610ede8107712fd71dfa1da","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048511610ede8107712fd71dfa1da","width":64}],"is_playable":true,"name":"PARADOX X (10 years after)","release_date":"2006-09-26","release_date_precision":"day","total_tracks":10,"type":"album","uri":"spotify:album:75HcP7Zo7NAjJtvbOW5r1F"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"external_urls":{"spotify":"https://open.spotify.com/album/5OuhGwc5LfVeGDwzbDpH3l"},"href":"https://api.spotify.com/v1/albums/5OuhGwc5LfVeGDwzbDpH3l","id":"5OuhGwc5LfVeGDwzbDpH3l","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2738fb822c8aaf85314b8d610b3","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e028fb822c8aaf85314b8d610b3","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048518fb822c8aaf85314b8d610b3","width":64}],"is_playable":true,"name":"Daydreamer","release_date":"2011-12-16","release_date_precision":"day","total_tracks":17,"type":"album","uri":"spotify:album:5OuhGwc5LfVeGDwzbDpH3l"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"external_urls":{"spotify":"https://open.spotify.com/album/5lNC7r0bLooDwla2FXtWuK"},"href":"https://api.spotify.com/v1/albums/5lNC7r0bLooDwla2FXtWuK","id":"5lNC7r0bLooDwla2FXtWuK","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2733d3e77ef72c3c3773cc75514","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e023d3e77ef72c3c3773cc75514","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048513d3e77ef72c3c3773cc75514","width":64}],"is_playable":true,"name":"BEFORE SUNRISE AFTER SUNSET","release_date":"2016-10-07","release_date_precision":"day","total_tracks":22,"type":"album","uri":"spotify:album:5lNC7r0bLooDwla2FXtWuK"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/2xjp1njSsecnNhjgKZ35Ok"},"href":"https://api.spotify.com/v1/artists/2xjp1njSsecnNhjgKZ35Ok","id":"2xjp1njSsecnNhjgKZ35Ok","name":"Silly Fools","type":"artist","uri":"spotify:artist:2xjp1njSsecnNhjgKZ35Ok"}],"external_urls":{"spotify":"https://open.spotify.com/album/7CYTViNhrd1uXR1AkgVPjr"},"href":"https://api.spotify.com/v1/albums/7CYTViNhrd1uXR1AkgVPjr","id":"7CYTViNhrd1uXR1AkgVPjr","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b273e1617076732e7d790376447e","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e02e1617076732e7d790376447e","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d00004851e1617076732e7d790376447e","width":64}],"is_playable":true,"name":"Juicy","release_date":"2002-03-26","release_date_precision":"day","total_tracks":10,"type":"album","uri":"spotify:album:7CYTViNhrd1uXR1AkgVPjr"},{"album_type":"single","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"external_urls":{"spotify":"https://open.spotify.com/album/5seliEvrZLXTCd5iYuEOTf"},"href":"https://api.spotify.com/v1/albums/5seliEvrZLXTCd5iYuEOTf","id":"5seliEvrZLXTCd5iYuEOTf","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2731332b2896e5ac29c25906b24","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e021332b2896e5ac29c25906b24","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048511332b2896e5ac29c25906b24","width":64}],"is_playable":true,"name":"เขียนไว้ข้างเตียง - Single","release_date":"2018-11-08","release_date_precision":"day","total_tracks":1,"type":"album","uri":"spotify:album:5seliEvrZLXTCd5iYuEOTf"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"external_urls":{"spotify":"https://open.spotify.com/album/1idlB8EI8IUmHql8jbvGX9"},"href":"https://api.spotify.com/v1/albums/1idlB8EI8IUmHql8jbvGX9","id":"1idlB8EI8IUmHql8jbvGX9","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2734ff3b15909a659bf96b351f4","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e024ff3b15909a659bf96b351f4","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048514ff3b15909a659bf96b351f4","width":64}],"is_playable":true,"name":"Paradox in Paradise","release_date":"2007-02-23","release_date_precision":"day","total_tracks":13,"type":"album","uri":"spotify:album:1idlB8EI8IUmHql8jbvGX9"},{"album_type":"single","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"external_urls":{"spotify":"https://open.spotify.com/album/75VRvQYLgJ2yyRfw4a9oQc"},"href":"https://api.spotify.com/v1/albums/75VRvQYLgJ2yyRfw4a9oQc","id":"75VRvQYLgJ2yyRfw4a9oQc","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b273e2c161143dfa4d878c03edc3","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e02e2c161143dfa4d878c03edc3","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d00004851e2c161143dfa4d878c03edc3","width":64}],"is_playable":true,"name":"ฤดูหนาว - Single","release_date":"2023-11-27","release_date_precision":"day","total_tracks":1,"type":"album","uri":"spotify:album:75VRvQYLgJ2yyRfw4a9oQc"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/5pxvW2nJ0a77b9oX24Unwi"},"href":"https://api.spotify.com/v1/artists/5pxvW2nJ0a77b9oX24Unwi","id":"5pxvW2nJ0a77b9oX24Unwi","name":"Tattoo Colour","type":"artist","uri":"spotify:artist:5pxvW2nJ0a77b9oX24Unwi"}],"external_urls":{"spotify":"https://open.spotify.com/album/7x31VHMG8eicd8iYQzx0L9"},"href":"https://api.spotify.com/v1/albums/7x31VHMG8eicd8iYQzx0L9","id":"7x31VHMG8eicd8iYQzx0L9","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b273bd0446acb2c217a4915a9361","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e02bd0446acb2c217a4915a9361","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d00004851bd0446acb2c217a4915a9361","width":64}],"is_playable":true,"name":"ชุดที่ 8 จงเพราะ","release_date":"2008","release_date_precision":"year","total_tracks":10,"type":"album","uri":"spotify:album:7x31VHMG8eicd8iYQzx0L9"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/2xjp1njSsecnNhjgKZ35Ok"},"href":"https://api.spotify.com/v1/artists/2xjp1njSsecnNhjgKZ35Ok","id":"2xjp1njSsecnNhjgKZ35Ok","name":"Silly Fools","type":"artist","uri":"spotify:artist:2xjp1njSsecnNhjgKZ35Ok"}],"external_urls":{"spotify":"https://open.spotify.com/album/6aCe715WE3oSsBiI4zvV0s"},"href":"https://api.spotify.com/v1/albums/6aCe715WE3oSsBiI4zvV0s","id":"6aCe715WE3oSsBiI4zvV0s","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2732b8f8021a131a6e70fb837de","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e022b8f8021a131a6e70fb837de","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048512b8f8021a131a6e70fb837de","width":64}],"is_playable":true,"name":"Mint","release_date":"2000-09-28","release_date_precision":"day","total_tracks":10,"type":"album","uri":"spotify:album:6aCe715WE3oSsBiI4zvV0s"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/1pTiPuAABytFjsXsUwgsNE"},"href":"https://api.spotify.com/v1/artists/1pTiPuAABytFjsXsUwgsNE","id":"1pTiPuAABytFjsXsUwgsNE","name":"Pause","type":"artist","uri":"spotify:artist:1pTiPuAABytFjsXsUwgsNE"}],"external_urls":{"spotify":"https://open.spotify.com/album/5UEBDg1sx03ah3jfU5U8no"},"href":"https://api.spotify.com/v1/albums/5UEBDg1sx03ah3jfU5U8no","id":"5UEBDg1sx03ah3jfU5U8no","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b27314234decd7186d0f841f5108","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e0214234decd7186d0f841f5108","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d0000485114234decd7186d0f841f5108","width":64}],"is_playable":true,"name":"Mild","release_date":"1999","release_date_precision":"year","total_tracks":11,"type":"album","uri":"spotify:album:5UEBDg1sx03ah3jfU5U8no"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/2xjp1njSsecnNhjgKZ35Ok"},"href":"https://api.spotify.com/v1/artists/2xjp1njSsecnNhjgKZ35Ok","id":"2xjp1njSsecnNhjgKZ35Ok","name":"Silly Fools","type":"artist","uri":"spotify:artist:2xjp1njSsecnNhjgKZ35Ok"}],"external_urls":{"spotify":"https://open.spotify.com/album/0we53PBCJVDMmrmIQ34emB"},"href":"https://api.spotify.com/v1/albums/0we53PBCJVDMmrmIQ34emB","id":"0we53PBCJVDMmrmIQ34emB","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b273ca794e18200a9229cafa4de5","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e02ca794e18200a9229cafa4de5","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d00004851ca794e18200a9229cafa4de5","width":64}],"is_playable":true,"name":"King Size","release_date":"2004-01-15","release_date_precision":"day","total_tracks":11,"type":"album","uri":"spotify:album:0we53PBCJVDMmrmIQ34emB"},{"album_type":"single","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/7zyObVag8rUjItn71SkIrh"},"href":"https://api.spotify.com/v1/artists/7zyObVag8rUjItn71SkIrh","id":"7zyObVag8rUjItn71SkIrh","name":"Survive Said The Prophet","type":"artist","uri":"spotify:artist:7zyObVag8rUjItn71SkIrh"}],"external_urls":{"spotify":"https://open.spotify.com/album/5CVLZcnzPNgpSUqJA71HYz"},"href":"https://api.spotify.com/v1/albums/5CVLZcnzPNgpSUqJA71HYz","id":"5CVLZcnzPNgpSUqJA71HYz","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2734956f9fa9f46a21d551c7794","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e024956f9fa9f46a21d551c7794","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048514956f9fa9f46a21d551c7794","width":64}],"is_playable":true,"name":"Paradox","release_date":"2023-04-04","release_date_precision":"day","total_tracks":1,"type":"album","uri":"spotify:album:5CVLZcnzPNgpSUqJA71HYz"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/76VTagPgPgPlFE7hfjT0Zt"},"href":"https://api.spotify.com/v1/artists/76VTagPgPgPlFE7hfjT0Zt","id":"76VTagPgPgPlFE7hfjT0Zt","name":"Bodyslam","type":"artist","uri":"spotify:artist:76VTagPgPgPlFE7hfjT0Zt"}],"external_urls":{"spotify":"https://open.spotify.com/album/44V59QQ3ipFdJjqlIDVsSl"},"href":"https://api.spotify.com/v1/albums/44V59QQ3ipFdJjqlIDVsSl","id":"44V59QQ3ipFdJjqlIDVsSl","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b273b8ff243ecbfa301a569c8b26","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e02b8ff243ecbfa301a569c8b26","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d00004851b8ff243ecbfa301a569c8b26","width":64}],"is_playable":true,"name":"Bodyslam","release_date":"2015","release_date_precision":"year","total_tracks":12,"type":"album","uri":"spotify:album:44V59QQ3ipFdJjqlIDVsSl"},{"album_type":"compilation","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"external_urls":{"spotify":"https://open.spotify.com/album/78IZNSfMsUEXcMjSIWpXcu"},"href":"https://api.spotify.com/v1/albums/78IZNSfMsUEXcMjSIWpXcu","id":"78IZNSfMsUEXcMjSIWpXcu","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2734fb309027aa3f06deaba6a0c","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e024fb309027aa3f06deaba6a0c","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048514fb309027aa3f06deaba6a0c","width":64}],"is_playable":true,"name":"The Journey Of Paradox","release_date":"2012-12-07","release_date_precision":"day","total_tracks":29,"type":"album","uri":"spotify:album:78IZNSfMsUEXcMjSIWpXcu"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/05CRzFTp7TouOXPuH6Tapu"},"href":"https://api.spotify.com/v1/artists/05CRzFTp7TouOXPuH6Tapu","id":"05CRzFTp7TouOXPuH6Tapu","name":"Isyana Sarasvati","type":"artist","uri":"spotify:artist:05CRzFTp7TouOXPuH6Tapu"}],"external_urls":{"spotify":"https://open.spotify.com/album/4OTR3hEos8V9FqPZ754knV"},"href":"https://api.spotify.com/v1/albums/4OTR3hEos8V9FqPZ754knV","id":"4OTR3hEos8V9FqPZ754knV","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2733fa0a90f04f3a889b343c28c","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e023fa0a90f04f3a889b343c28c","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048513fa0a90f04f3a889b343c28c","width":64}],"is_playable":true,"name":"Paradox","release_date":"2017-09-01","release_date_precision":"day","total_tracks":10,"type":"album","uri":"spotify:album:4OTR3hEos8V9FqPZ754knV"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/2YvlK6lKiKVjXxsjvNbnqg"},"href":"https://api.spotify.com/v1/artists/2YvlK6lKiKVjXxsjvNbnqg","id":"2YvlK6lKiKVjXxsjvNbnqg","name":"HOYO-MiX","type":"artist","uri":"spotify:artist:2YvlK6lKiKVjXxsjvNbnqg"}],"external_urls":{"spotify":"https://open.spotify.com/album/2hZd4VWskQkQFUdysbqaVL"},"href":"https://api.spotify.com/v1/albums/2hZd4VWskQkQFUdysbqaVL","id":"2hZd4VWskQkQFUdysbqaVL","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b273700bf0ac47436ea16c2c8379","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e02700bf0ac47436ea16c2c8379","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d00004851700bf0ac47436ea16c2c8379","width":64}],"is_playable":true,"name":"Paradox (Honkai Impact 3rd Original Soundtrack)","release_date":"2022-02-02","release_date_precision":"day","total_tracks":40,"type":"album","uri":"spotify:album:2hZd4VWskQkQFUdysbqaVL"},{"album_type":"single","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/2IUl3m1H1EQ7QfNbNWvgru"},"href":"https://api.spotify.com/v1/artists/2IUl3m1H1EQ7QfNbNWvgru","id":"2IUl3m1H1EQ7QfNbNWvgru","name":"Vaundy","type":"artist","uri":"spotify:artist:2IUl3m1H1EQ7QfNbNWvgru"}],"external_urls":{"spotify":"https://open.spotify.com/album/4cHdtiNVgGR80HprOsOdiK"},"href":"https://api.spotify.com/v1/albums/4cHdtiNVgGR80HprOsOdiK","id":"4cHdtiNVgGR80HprOsOdiK","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2735855cef3bb373a81316c2820","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e025855cef3bb373a81316c2820","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048515855cef3bb373a81316c2820","width":64}],"is_playable":true,"name":"タイムパラドックス","release_date":"2024-01-07","release_date_precision":"day","total_tracks":1,"type":"album","uri":"spotify:album:4cHdtiNVgGR80HprOsOdiK"},{"album_type":"compilation","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/0LyfQWJT6nXafLPZqxe9Of"},"href":"https://api.spotify.com/v1/artists/0LyfQWJT6nXafLPZqxe9Of","id":"0LyfQWJT6nXafLPZqxe9Of","name":"Various Artists","type":"artist","uri":"spotify:artist:0LyfQWJT6nXafLPZqxe9Of"}],"external_urls":{"spotify":"https://open.spotify.com/album/4W6oeLcRlI6LUDRUkxHwPs"},"href":"https://api.spotify.com/v1/albums/4W6oeLcRlI6LUDRUkxHwPs","id":"4W6oeLcRlI6LUDRUkxHwPs","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b27340357b881a1a5167c7cbe676","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e0240357b881a1a5167c7cbe676","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d0000485140357b881a1a5167c7cbe676","width":64}],"is_playable":true,"name":"Paradox Live Opening Show-Road to Legend-","release_date":"2022-03-30","release_date_precision":"day","total_tracks":15,"type":"album","uri":"spotify:album:4W6oeLcRlI6LUDRUkxHwPs"}],"limit":20,"next":"https://api.spotify.com/v1/search?query=Paradox&type=album&market=TH&offset=20&limit=20","offset":0,"previous":null,"total":1000}

SearchResponse searchResponseFromJson(String str) =>
    SearchResponse.fromJson(json.decode(str));

String searchResponseToJson(SearchResponse data) => json.encode(data.toJson());

class SearchResponse {
  SearchResponse({
    this.albums,
  });

  SearchResponse.fromJson(dynamic json) {
    albums = json['albums'] != null ? Albums.fromJson(json['albums']) : null;
  }

  Albums? albums;

  SearchResponse copyWith({
    Albums? albums,
  }) =>
      SearchResponse(
        albums: albums ?? this.albums,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (albums != null) {
      map['albums'] = albums?.toJson();
    }
    return map;
  }
}

/// href : "https://api.spotify.com/v1/search?query=Paradox&type=album&market=TH&offset=0&limit=20"
/// items : [{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"external_urls":{"spotify":"https://open.spotify.com/album/0arxBfmEjM9dUu8fm9WC9n"},"href":"https://api.spotify.com/v1/albums/0arxBfmEjM9dUu8fm9WC9n","id":"0arxBfmEjM9dUu8fm9WC9n","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2736286cdb7819e1cb9c87ced70","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e026286cdb7819e1cb9c87ced70","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048516286cdb7819e1cb9c87ced70","width":64}],"is_playable":true,"name":"Summer","release_date":"2000-05-25","release_date_precision":"day","total_tracks":12,"type":"album","uri":"spotify:album:0arxBfmEjM9dUu8fm9WC9n"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"external_urls":{"spotify":"https://open.spotify.com/album/3waFXalZx4Ca0000kvuMkc"},"href":"https://api.spotify.com/v1/albums/3waFXalZx4Ca0000kvuMkc","id":"3waFXalZx4Ca0000kvuMkc","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2735fcf0aa6b762709da2a23de9","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e025fcf0aa6b762709da2a23de9","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048515fcf0aa6b762709da2a23de9","width":64}],"is_playable":true,"name":"Freestyle","release_date":"2003-09-23","release_date_precision":"day","total_tracks":13,"type":"album","uri":"spotify:album:3waFXalZx4Ca0000kvuMkc"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"external_urls":{"spotify":"https://open.spotify.com/album/75HcP7Zo7NAjJtvbOW5r1F"},"href":"https://api.spotify.com/v1/albums/75HcP7Zo7NAjJtvbOW5r1F","id":"75HcP7Zo7NAjJtvbOW5r1F","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2731610ede8107712fd71dfa1da","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e021610ede8107712fd71dfa1da","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048511610ede8107712fd71dfa1da","width":64}],"is_playable":true,"name":"PARADOX X (10 years after)","release_date":"2006-09-26","release_date_precision":"day","total_tracks":10,"type":"album","uri":"spotify:album:75HcP7Zo7NAjJtvbOW5r1F"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"external_urls":{"spotify":"https://open.spotify.com/album/5OuhGwc5LfVeGDwzbDpH3l"},"href":"https://api.spotify.com/v1/albums/5OuhGwc5LfVeGDwzbDpH3l","id":"5OuhGwc5LfVeGDwzbDpH3l","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2738fb822c8aaf85314b8d610b3","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e028fb822c8aaf85314b8d610b3","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048518fb822c8aaf85314b8d610b3","width":64}],"is_playable":true,"name":"Daydreamer","release_date":"2011-12-16","release_date_precision":"day","total_tracks":17,"type":"album","uri":"spotify:album:5OuhGwc5LfVeGDwzbDpH3l"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"external_urls":{"spotify":"https://open.spotify.com/album/5lNC7r0bLooDwla2FXtWuK"},"href":"https://api.spotify.com/v1/albums/5lNC7r0bLooDwla2FXtWuK","id":"5lNC7r0bLooDwla2FXtWuK","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2733d3e77ef72c3c3773cc75514","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e023d3e77ef72c3c3773cc75514","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048513d3e77ef72c3c3773cc75514","width":64}],"is_playable":true,"name":"BEFORE SUNRISE AFTER SUNSET","release_date":"2016-10-07","release_date_precision":"day","total_tracks":22,"type":"album","uri":"spotify:album:5lNC7r0bLooDwla2FXtWuK"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/2xjp1njSsecnNhjgKZ35Ok"},"href":"https://api.spotify.com/v1/artists/2xjp1njSsecnNhjgKZ35Ok","id":"2xjp1njSsecnNhjgKZ35Ok","name":"Silly Fools","type":"artist","uri":"spotify:artist:2xjp1njSsecnNhjgKZ35Ok"}],"external_urls":{"spotify":"https://open.spotify.com/album/7CYTViNhrd1uXR1AkgVPjr"},"href":"https://api.spotify.com/v1/albums/7CYTViNhrd1uXR1AkgVPjr","id":"7CYTViNhrd1uXR1AkgVPjr","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b273e1617076732e7d790376447e","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e02e1617076732e7d790376447e","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d00004851e1617076732e7d790376447e","width":64}],"is_playable":true,"name":"Juicy","release_date":"2002-03-26","release_date_precision":"day","total_tracks":10,"type":"album","uri":"spotify:album:7CYTViNhrd1uXR1AkgVPjr"},{"album_type":"single","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"external_urls":{"spotify":"https://open.spotify.com/album/5seliEvrZLXTCd5iYuEOTf"},"href":"https://api.spotify.com/v1/albums/5seliEvrZLXTCd5iYuEOTf","id":"5seliEvrZLXTCd5iYuEOTf","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2731332b2896e5ac29c25906b24","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e021332b2896e5ac29c25906b24","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048511332b2896e5ac29c25906b24","width":64}],"is_playable":true,"name":"เขียนไว้ข้างเตียง - Single","release_date":"2018-11-08","release_date_precision":"day","total_tracks":1,"type":"album","uri":"spotify:album:5seliEvrZLXTCd5iYuEOTf"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"external_urls":{"spotify":"https://open.spotify.com/album/1idlB8EI8IUmHql8jbvGX9"},"href":"https://api.spotify.com/v1/albums/1idlB8EI8IUmHql8jbvGX9","id":"1idlB8EI8IUmHql8jbvGX9","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2734ff3b15909a659bf96b351f4","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e024ff3b15909a659bf96b351f4","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048514ff3b15909a659bf96b351f4","width":64}],"is_playable":true,"name":"Paradox in Paradise","release_date":"2007-02-23","release_date_precision":"day","total_tracks":13,"type":"album","uri":"spotify:album:1idlB8EI8IUmHql8jbvGX9"},{"album_type":"single","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"external_urls":{"spotify":"https://open.spotify.com/album/75VRvQYLgJ2yyRfw4a9oQc"},"href":"https://api.spotify.com/v1/albums/75VRvQYLgJ2yyRfw4a9oQc","id":"75VRvQYLgJ2yyRfw4a9oQc","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b273e2c161143dfa4d878c03edc3","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e02e2c161143dfa4d878c03edc3","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d00004851e2c161143dfa4d878c03edc3","width":64}],"is_playable":true,"name":"ฤดูหนาว - Single","release_date":"2023-11-27","release_date_precision":"day","total_tracks":1,"type":"album","uri":"spotify:album:75VRvQYLgJ2yyRfw4a9oQc"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/5pxvW2nJ0a77b9oX24Unwi"},"href":"https://api.spotify.com/v1/artists/5pxvW2nJ0a77b9oX24Unwi","id":"5pxvW2nJ0a77b9oX24Unwi","name":"Tattoo Colour","type":"artist","uri":"spotify:artist:5pxvW2nJ0a77b9oX24Unwi"}],"external_urls":{"spotify":"https://open.spotify.com/album/7x31VHMG8eicd8iYQzx0L9"},"href":"https://api.spotify.com/v1/albums/7x31VHMG8eicd8iYQzx0L9","id":"7x31VHMG8eicd8iYQzx0L9","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b273bd0446acb2c217a4915a9361","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e02bd0446acb2c217a4915a9361","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d00004851bd0446acb2c217a4915a9361","width":64}],"is_playable":true,"name":"ชุดที่ 8 จงเพราะ","release_date":"2008","release_date_precision":"year","total_tracks":10,"type":"album","uri":"spotify:album:7x31VHMG8eicd8iYQzx0L9"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/2xjp1njSsecnNhjgKZ35Ok"},"href":"https://api.spotify.com/v1/artists/2xjp1njSsecnNhjgKZ35Ok","id":"2xjp1njSsecnNhjgKZ35Ok","name":"Silly Fools","type":"artist","uri":"spotify:artist:2xjp1njSsecnNhjgKZ35Ok"}],"external_urls":{"spotify":"https://open.spotify.com/album/6aCe715WE3oSsBiI4zvV0s"},"href":"https://api.spotify.com/v1/albums/6aCe715WE3oSsBiI4zvV0s","id":"6aCe715WE3oSsBiI4zvV0s","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2732b8f8021a131a6e70fb837de","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e022b8f8021a131a6e70fb837de","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048512b8f8021a131a6e70fb837de","width":64}],"is_playable":true,"name":"Mint","release_date":"2000-09-28","release_date_precision":"day","total_tracks":10,"type":"album","uri":"spotify:album:6aCe715WE3oSsBiI4zvV0s"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/1pTiPuAABytFjsXsUwgsNE"},"href":"https://api.spotify.com/v1/artists/1pTiPuAABytFjsXsUwgsNE","id":"1pTiPuAABytFjsXsUwgsNE","name":"Pause","type":"artist","uri":"spotify:artist:1pTiPuAABytFjsXsUwgsNE"}],"external_urls":{"spotify":"https://open.spotify.com/album/5UEBDg1sx03ah3jfU5U8no"},"href":"https://api.spotify.com/v1/albums/5UEBDg1sx03ah3jfU5U8no","id":"5UEBDg1sx03ah3jfU5U8no","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b27314234decd7186d0f841f5108","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e0214234decd7186d0f841f5108","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d0000485114234decd7186d0f841f5108","width":64}],"is_playable":true,"name":"Mild","release_date":"1999","release_date_precision":"year","total_tracks":11,"type":"album","uri":"spotify:album:5UEBDg1sx03ah3jfU5U8no"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/2xjp1njSsecnNhjgKZ35Ok"},"href":"https://api.spotify.com/v1/artists/2xjp1njSsecnNhjgKZ35Ok","id":"2xjp1njSsecnNhjgKZ35Ok","name":"Silly Fools","type":"artist","uri":"spotify:artist:2xjp1njSsecnNhjgKZ35Ok"}],"external_urls":{"spotify":"https://open.spotify.com/album/0we53PBCJVDMmrmIQ34emB"},"href":"https://api.spotify.com/v1/albums/0we53PBCJVDMmrmIQ34emB","id":"0we53PBCJVDMmrmIQ34emB","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b273ca794e18200a9229cafa4de5","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e02ca794e18200a9229cafa4de5","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d00004851ca794e18200a9229cafa4de5","width":64}],"is_playable":true,"name":"King Size","release_date":"2004-01-15","release_date_precision":"day","total_tracks":11,"type":"album","uri":"spotify:album:0we53PBCJVDMmrmIQ34emB"},{"album_type":"single","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/7zyObVag8rUjItn71SkIrh"},"href":"https://api.spotify.com/v1/artists/7zyObVag8rUjItn71SkIrh","id":"7zyObVag8rUjItn71SkIrh","name":"Survive Said The Prophet","type":"artist","uri":"spotify:artist:7zyObVag8rUjItn71SkIrh"}],"external_urls":{"spotify":"https://open.spotify.com/album/5CVLZcnzPNgpSUqJA71HYz"},"href":"https://api.spotify.com/v1/albums/5CVLZcnzPNgpSUqJA71HYz","id":"5CVLZcnzPNgpSUqJA71HYz","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2734956f9fa9f46a21d551c7794","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e024956f9fa9f46a21d551c7794","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048514956f9fa9f46a21d551c7794","width":64}],"is_playable":true,"name":"Paradox","release_date":"2023-04-04","release_date_precision":"day","total_tracks":1,"type":"album","uri":"spotify:album:5CVLZcnzPNgpSUqJA71HYz"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/76VTagPgPgPlFE7hfjT0Zt"},"href":"https://api.spotify.com/v1/artists/76VTagPgPgPlFE7hfjT0Zt","id":"76VTagPgPgPlFE7hfjT0Zt","name":"Bodyslam","type":"artist","uri":"spotify:artist:76VTagPgPgPlFE7hfjT0Zt"}],"external_urls":{"spotify":"https://open.spotify.com/album/44V59QQ3ipFdJjqlIDVsSl"},"href":"https://api.spotify.com/v1/albums/44V59QQ3ipFdJjqlIDVsSl","id":"44V59QQ3ipFdJjqlIDVsSl","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b273b8ff243ecbfa301a569c8b26","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e02b8ff243ecbfa301a569c8b26","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d00004851b8ff243ecbfa301a569c8b26","width":64}],"is_playable":true,"name":"Bodyslam","release_date":"2015","release_date_precision":"year","total_tracks":12,"type":"album","uri":"spotify:album:44V59QQ3ipFdJjqlIDVsSl"},{"album_type":"compilation","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"external_urls":{"spotify":"https://open.spotify.com/album/78IZNSfMsUEXcMjSIWpXcu"},"href":"https://api.spotify.com/v1/albums/78IZNSfMsUEXcMjSIWpXcu","id":"78IZNSfMsUEXcMjSIWpXcu","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2734fb309027aa3f06deaba6a0c","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e024fb309027aa3f06deaba6a0c","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048514fb309027aa3f06deaba6a0c","width":64}],"is_playable":true,"name":"The Journey Of Paradox","release_date":"2012-12-07","release_date_precision":"day","total_tracks":29,"type":"album","uri":"spotify:album:78IZNSfMsUEXcMjSIWpXcu"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/05CRzFTp7TouOXPuH6Tapu"},"href":"https://api.spotify.com/v1/artists/05CRzFTp7TouOXPuH6Tapu","id":"05CRzFTp7TouOXPuH6Tapu","name":"Isyana Sarasvati","type":"artist","uri":"spotify:artist:05CRzFTp7TouOXPuH6Tapu"}],"external_urls":{"spotify":"https://open.spotify.com/album/4OTR3hEos8V9FqPZ754knV"},"href":"https://api.spotify.com/v1/albums/4OTR3hEos8V9FqPZ754knV","id":"4OTR3hEos8V9FqPZ754knV","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2733fa0a90f04f3a889b343c28c","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e023fa0a90f04f3a889b343c28c","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048513fa0a90f04f3a889b343c28c","width":64}],"is_playable":true,"name":"Paradox","release_date":"2017-09-01","release_date_precision":"day","total_tracks":10,"type":"album","uri":"spotify:album:4OTR3hEos8V9FqPZ754knV"},{"album_type":"album","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/2YvlK6lKiKVjXxsjvNbnqg"},"href":"https://api.spotify.com/v1/artists/2YvlK6lKiKVjXxsjvNbnqg","id":"2YvlK6lKiKVjXxsjvNbnqg","name":"HOYO-MiX","type":"artist","uri":"spotify:artist:2YvlK6lKiKVjXxsjvNbnqg"}],"external_urls":{"spotify":"https://open.spotify.com/album/2hZd4VWskQkQFUdysbqaVL"},"href":"https://api.spotify.com/v1/albums/2hZd4VWskQkQFUdysbqaVL","id":"2hZd4VWskQkQFUdysbqaVL","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b273700bf0ac47436ea16c2c8379","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e02700bf0ac47436ea16c2c8379","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d00004851700bf0ac47436ea16c2c8379","width":64}],"is_playable":true,"name":"Paradox (Honkai Impact 3rd Original Soundtrack)","release_date":"2022-02-02","release_date_precision":"day","total_tracks":40,"type":"album","uri":"spotify:album:2hZd4VWskQkQFUdysbqaVL"},{"album_type":"single","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/2IUl3m1H1EQ7QfNbNWvgru"},"href":"https://api.spotify.com/v1/artists/2IUl3m1H1EQ7QfNbNWvgru","id":"2IUl3m1H1EQ7QfNbNWvgru","name":"Vaundy","type":"artist","uri":"spotify:artist:2IUl3m1H1EQ7QfNbNWvgru"}],"external_urls":{"spotify":"https://open.spotify.com/album/4cHdtiNVgGR80HprOsOdiK"},"href":"https://api.spotify.com/v1/albums/4cHdtiNVgGR80HprOsOdiK","id":"4cHdtiNVgGR80HprOsOdiK","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2735855cef3bb373a81316c2820","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e025855cef3bb373a81316c2820","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048515855cef3bb373a81316c2820","width":64}],"is_playable":true,"name":"タイムパラドックス","release_date":"2024-01-07","release_date_precision":"day","total_tracks":1,"type":"album","uri":"spotify:album:4cHdtiNVgGR80HprOsOdiK"},{"album_type":"compilation","artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/0LyfQWJT6nXafLPZqxe9Of"},"href":"https://api.spotify.com/v1/artists/0LyfQWJT6nXafLPZqxe9Of","id":"0LyfQWJT6nXafLPZqxe9Of","name":"Various Artists","type":"artist","uri":"spotify:artist:0LyfQWJT6nXafLPZqxe9Of"}],"external_urls":{"spotify":"https://open.spotify.com/album/4W6oeLcRlI6LUDRUkxHwPs"},"href":"https://api.spotify.com/v1/albums/4W6oeLcRlI6LUDRUkxHwPs","id":"4W6oeLcRlI6LUDRUkxHwPs","images":[{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b27340357b881a1a5167c7cbe676","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e0240357b881a1a5167c7cbe676","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d0000485140357b881a1a5167c7cbe676","width":64}],"is_playable":true,"name":"Paradox Live Opening Show-Road to Legend-","release_date":"2022-03-30","release_date_precision":"day","total_tracks":15,"type":"album","uri":"spotify:album:4W6oeLcRlI6LUDRUkxHwPs"}]
/// limit : 20
/// next : "https://api.spotify.com/v1/search?query=Paradox&type=album&market=TH&offset=20&limit=20"
/// offset : 0
/// previous : null
/// total : 1000

Albums albumsFromJson(String str) => Albums.fromJson(json.decode(str));

String albumsToJson(Albums data) => json.encode(data.toJson());

class Albums {
  Albums({
    this.href,
    this.items,
    this.limit,
    this.next,
    this.offset,
    this.previous,
    this.total,
  });

  Albums.fromJson(dynamic json) {
    href = json['href'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
    limit = json['limit'];
    next = json['next'];
    offset = json['offset'];
    previous = json['previous'];
    total = json['total'];
  }

  String? href;
  List<Items>? items;
  num? limit;
  String? next;
  num? offset;
  dynamic previous;
  num? total;

  Albums copyWith({
    String? href,
    List<Items>? items,
    num? limit,
    String? next,
    num? offset,
    dynamic previous,
    num? total,
  }) =>
      Albums(
        href: href ?? this.href,
        items: items ?? this.items,
        limit: limit ?? this.limit,
        next: next ?? this.next,
        offset: offset ?? this.offset,
        previous: previous ?? this.previous,
        total: total ?? this.total,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['href'] = href;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    map['limit'] = limit;
    map['next'] = next;
    map['offset'] = offset;
    map['previous'] = previous;
    map['total'] = total;
    return map;
  }
}

/// album_type : "album"
/// artists : [{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}]
/// external_urls : {"spotify":"https://open.spotify.com/album/0arxBfmEjM9dUu8fm9WC9n"}
/// href : "https://api.spotify.com/v1/albums/0arxBfmEjM9dUu8fm9WC9n"
/// id : "0arxBfmEjM9dUu8fm9WC9n"
/// images : [{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2736286cdb7819e1cb9c87ced70","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e026286cdb7819e1cb9c87ced70","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048516286cdb7819e1cb9c87ced70","width":64}]
/// is_playable : true
/// name : "Summer"
/// release_date : "2000-05-25"
/// release_date_precision : "day"
/// total_tracks : 12
/// type : "album"
/// uri : "spotify:album:0arxBfmEjM9dUu8fm9WC9n"

Items itemsFromJson(String str) => Items.fromJson(json.decode(str));

String itemsToJson(Items data) => json.encode(data.toJson());

class Items {
  Items({
    this.albumType,
    this.artists,
    this.externalUrls,
    this.href,
    this.id,
    this.images,
    this.isPlayable,
    this.name,
    this.releaseDate,
    this.releaseDatePrecision,
    this.totalTracks,
    this.type,
    this.uri,
  });

  Items.fromJson(dynamic json) {
    albumType = json['album_type'];
    if (json['artists'] != null) {
      artists = [];
      json['artists'].forEach((v) {
        artists?.add(Artists.fromJson(v));
      });
    }
    externalUrls = json['external_urls'] != null
        ? ExternalUrls.fromJson(json['external_urls'])
        : null;
    href = json['href'];
    id = json['id'];
    if (json['images'] != null) {
      images = [];
      json['images'].forEach((v) {
        images?.add(Images.fromJson(v));
      });
    }
    isPlayable = json['is_playable'];
    name = json['name'];
    releaseDate = json['release_date'];
    releaseDatePrecision = json['release_date_precision'];
    totalTracks = json['total_tracks'];
    type = json['type'];
    uri = json['uri'];
  }

  String? albumType;
  List<Artists>? artists;
  ExternalUrls? externalUrls;
  String? href;
  String? id;
  List<Images>? images;
  bool? isPlayable;
  String? name;
  String? releaseDate;
  String? releaseDatePrecision;
  num? totalTracks;
  String? type;
  String? uri;

  Items copyWith({
    String? albumType,
    List<Artists>? artists,
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    List<Images>? images,
    bool? isPlayable,
    String? name,
    String? releaseDate,
    String? releaseDatePrecision,
    num? totalTracks,
    String? type,
    String? uri,
  }) =>
      Items(
        albumType: albumType ?? this.albumType,
        artists: artists ?? this.artists,
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        isPlayable: isPlayable ?? this.isPlayable,
        name: name ?? this.name,
        releaseDate: releaseDate ?? this.releaseDate,
        releaseDatePrecision: releaseDatePrecision ?? this.releaseDatePrecision,
        totalTracks: totalTracks ?? this.totalTracks,
        type: type ?? this.type,
        uri: uri ?? this.uri,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['album_type'] = albumType;
    if (artists != null) {
      map['artists'] = artists?.map((v) => v.toJson()).toList();
    }
    if (externalUrls != null) {
      map['external_urls'] = externalUrls?.toJson();
    }
    map['href'] = href;
    map['id'] = id;
    if (images != null) {
      map['images'] = images?.map((v) => v.toJson()).toList();
    }
    map['is_playable'] = isPlayable;
    map['name'] = name;
    map['release_date'] = releaseDate;
    map['release_date_precision'] = releaseDatePrecision;
    map['total_tracks'] = totalTracks;
    map['type'] = type;
    map['uri'] = uri;
    return map;
  }
}

/// height : 640
/// url : "https://i.scdn.co/image/ab67616d0000b2736286cdb7819e1cb9c87ced70"
/// width : 640

Images imagesFromJson(String str) => Images.fromJson(json.decode(str));

String imagesToJson(Images data) => json.encode(data.toJson());

class Images {
  Images({
    this.height,
    this.url,
    this.width,
  });

  Images.fromJson(dynamic json) {
    height = json['height'];
    url = json['url'];
    width = json['width'];
  }

  num? height;
  String? url;
  num? width;

  Images copyWith({
    num? height,
    String? url,
    num? width,
  }) =>
      Images(
        height: height ?? this.height,
        url: url ?? this.url,
        width: width ?? this.width,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['height'] = height;
    map['url'] = url;
    map['width'] = width;
    return map;
  }
}

/// spotify : "https://open.spotify.com/album/0arxBfmEjM9dUu8fm9WC9n"

ExternalUrls externalUrlsFromJson(String str) =>
    ExternalUrls.fromJson(json.decode(str));

String externalUrlsToJson(ExternalUrls data) => json.encode(data.toJson());

class ExternalUrls {
  ExternalUrls({
    this.spotify,
  });

  ExternalUrls.fromJson(dynamic json) {
    spotify = json['spotify'];
  }

  String? spotify;

  ExternalUrls copyWith({
    String? spotify,
  }) =>
      ExternalUrls(
        spotify: spotify ?? this.spotify,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['spotify'] = spotify;
    return map;
  }
}

/// external_urls : {"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"}
/// href : "https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M"
/// id : "32bq0Oy4ygWPR5ItUM5J5M"
/// name : "Paradox"
/// type : "artist"
/// uri : "spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"

Artists artistsFromJson(String str) => Artists.fromJson(json.decode(str));

String artistsToJson(Artists data) => json.encode(data.toJson());

class Artists {
  Artists({
    this.externalUrls,
    this.href,
    this.id,
    this.name,
    this.type,
    this.uri,
  });

  Artists.fromJson(dynamic json) {
    externalUrls = json['external_urls'] != null
        ? ExternalUrls.fromJson(json['external_urls'])
        : null;
    href = json['href'];
    id = json['id'];
    name = json['name'];
    type = json['type'];
    uri = json['uri'];
  }

  ExternalUrls? externalUrls;
  String? href;
  String? id;
  String? name;
  String? type;
  String? uri;

  Artists copyWith({
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    String? name,
    String? type,
    String? uri,
  }) =>
      Artists(
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        name: name ?? this.name,
        type: type ?? this.type,
        uri: uri ?? this.uri,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (externalUrls != null) {
      map['external_urls'] = externalUrls?.toJson();
    }
    map['href'] = href;
    map['id'] = id;
    map['name'] = name;
    map['type'] = type;
    map['uri'] = uri;
    return map;
  }
}
