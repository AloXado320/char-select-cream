# Cream the Rabbit - Character Select
A redone version of the original [CS] Cream the Rabbit to faithfully add the character along with some extras features taken from Super Cream 64.

Tested on sm64coopdx 1.0.4 and Character Select 1.9.1

![Preview](https://github.com/AloXado320/char-select-cream/raw/main/preview.png)

## Features
* Animations are now independent from the base model
* Added hovering action and fixed network sync issues using it
* Added expressions when she gets a star and exits a painting
* A personal API made to easily integrate costume packs

## Costume packs
Due to the amount of costumes she has on Super Cream 64, a personal API was written to reuse most of the code used on the base character.
This allows to independently activate each pack before hosting, for example all packs can be disabled as well so only her base model can be selected.

Click on each pack to see a list of costumes included:

<details>
  <summary><strong>Cream Pack 1 (Official Outfits)</strong></summary>
  
  * Riders (Sonic Riders)
  * Winter (Sonic Channel)
  * Spring (Sonic Forces Speed Battle)
  * Unicorn (Sonic Forces Speed Battle)
  * Yukata (Mario & Sonic 2020 Tokyo Olympics)
  * Swimsuit (Sonic X)
  * Halloween (Sonic Channel)
  * Junihotoe (Sonic Channel)
  * Princess (Sonic IDW Issue 22 RI Cover)
  * Detective (Sonic Channel)
  * Drummer (Sonic Forces Speed Battle)
  * Lunar New Year ([design by Jennifer Hernandez](https://bsky.app/profile/chibijenhen.bsky.social))
</details>

<details>
  <summary><strong>Cream Pack 2 (Cream and Friends)</strong></summary>
  
  * Young Vanilla (Sonic Advance 2, [design by Zack113](https://bsky.app/profile/zack113d.bsky.social))
  * Amy Rose (Sonic Adventure)
  * Blaze the Cat (Sonic Rush)
  * Marine the Raccoon (Sonic Rush Adventure)
  * Shadow the Hedgehog (Sonic Adventure 2)
  * Silver the Hedgehog (Sonic the Hedgehog (2006))
  * Miles 'Tails' Power (Sonic the Hedgehog 2)
  * Charmy Bee (Sonic Heroes)
  * Tikal the Echidna (Sonic Adventure)
  * Cosmo the Seedrian (Sonic X)
  * Dr. Eggman (Sonic Adventure, [Design by TheNovika](https://bsky.app/profile/thenovika.bsky.social))
  * Cheese the Chao (Sonic Adventure 2)
  * NiGHTS (NiGHTS into Dreams)
</details>

<details>
  <summary><strong>Cream Pack 3 (Cream Cosplay Vol 1)</strong></summary>
  
  * Super Mario (Super Mario 64)
  * Princess Daisy (Mario Tennis)
  * Klonoa (Klonoa: Door to Phantomile)
  * Engineer (Team Fortress 2)
  * Ichiban Kasuga (Yakuza 7: Like a Dragon)
  * Travis Touchdown (No More Heroes)
  * Jack Garland (Stranger of Paradise: Final Fantasy Origins)
  * Sakura Kasugano (Street Fighter Alpha 2)
  * Dudley (Street Fighter 3)
  * Luke Sullivan (Street Fighter 6)
  * Roll (Megaman 8)
  * Megaman X (Megaman X)
  * Lan Hikari (Megaman Battle Network)
  * Vergil (Devil May Cry 3/Ultimate Marvel vs Capcom 3)
  * Terry Bogard (Fatal Fury/King of Fighters)
  * Maria Renard (Castlevania: Rondo of Blood)
  * Richter Belmont (Castlevania: Rondo of Blood)
  * Charlotte Aulin  (Castlevania: Portrait of Ruin)
  * Goemon (Mystical Ninja Starring Goemon)
  * Mimi (Pop'n Music 15 Adventure)
  * Ryuta Ippongi (Osu! Tatakae! Ouendan!)
  * Peppino Spaghetti (Pizza Tower)
  * Angry Videogame Nerd (AVGN Adventures/Cinemassacre)
  * Sora (Kingdom Hearts)
  * Kairi (Kingdom Hearts Birth by Sleep)
  * Parappa (Parappa the Rapper)
</details>

<details>
  <summary><strong>Cream Pack 4 (Cream Cosplay Vol 2)</strong></summary>
  
  * Vanny (FNAF: Security Breach)
  * Madotsuki (Yume Nikki)
  * Arle (Puyo Puyo)
  * Dawn (Pokemon Diamond and Pearl)
  * Serena (Pokemon X and Y)
  * The Hero (Dragon Quest 3)
  * The Mage (Dragon Quest 3)
  * Sybil (Pseudoregalia)
  * Hatsune Miku ([design by _motobug](https://bsky.app/profile/motobug.bsky.social))
  * Wonder-Bun (Wonderful 101)
  * Sena (Xenoblade Chronicles 3)
  * Olimar (Pikmin)
  * Pit (Kid Icarus Uprising)
  * Ribbon (Kirby 64)
  * Anya Forger (SPYxFAMILY)
  * Rukia Kuchiki (Bleach)
  * Jin Kariya (Bleach)
  * Monkey D. Luffy (One Piece)
  * Carrot (One Piece)
  * Goku (Dragon Ball Z)
  * Pan (Dragon Ball Super: Super Hero)
  * Nezuko Kamado (Demon Slayer)
  * Yugi Muto (Yu-Gi-Oh!)
  * Cream (Senshi Bakuretsu Eto Ranger)
  * Sakura Kinomoto (Cardcaptor Sakura)
  * Stone Cold Steve Austin (WWE/Wrestling)
  * Pomni (The Amazing Digital Circus)
</details>

## TODO
The main goal of integrating her hover action and outfits is done. So while this mod is feature complete, there's still some things I would like to personally add

* Some remaining outfits from Super Cream 64, potentially as a new pack or add from an existing one
* Expressions during peach end cutscene, that is if people play Cream on vanilla courses of course
* WiddlePets integration, some Cream outfits have their own Cheese outfit in Super Cream 64
* Smart detection of later CoopDX and CS versions, for better hooks while maintaining legacy compatibility

## Credits
* AloXado320 - For coding the mod with some help from the people below
* Gamebun - For creating Super Cream 64 and the original version of the [CS] Cream
* Squishy - For making character select and making the alt costume code
* Alonwoof - For making fly hover action, ported by me (Alo) in Lua
* PeachyPeach - For making OMM and it's API, used as reference to create Cream Bun API
