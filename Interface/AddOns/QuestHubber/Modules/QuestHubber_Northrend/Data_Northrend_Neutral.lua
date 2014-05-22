local qhub = QuestHubber
if not qhub then return end

qhub:RegisterQuests({
	[486] = {
		[11865] = "16:0:0:72:70:5679:4400:25811:Zaza::0:11868:0",
		[11866] = "16:0:0:72:70:5699:4420:25809:Arch Druid Lathorius::0:0:0",
		[11613] = "16:0:0:71:68:4700:7540:25435:Karuk::12141:11619:0",
		[11868] = "16:0:0:72:70:5679:4400:25811:Zaza::11865:0:0",
		[11869] = "16:0:0:72:70:5719:4400:25810:Hierophant Cenius::0:11870:11872",
		[11870] = "16:0:0:72:70:5719:4400:25810:Hierophant Cenius::11869:11871:11872",
		[11617] = "16:0:0:72:68:5420:3620:25292:Etaruk::11612:11623:0",
		[11872] = "16:0:0:72:70:5780:5500:25838:Hierophant Liandra::11871:0:0",
		[11619] = "16:0:0:71:68:4700:7540:25435:Karuk::11613:0:0",
		[11620] = "16:0:0:71:68:4700:7540:25435:Karuk::0:11625:11626",
		[11876] = "16:0:0:72:70:5699:4420:25809:Arch Druid Lathorius::0:11878:11879",
		[11623] = "16:0:0:72:68:5420:3620:25292:Etaruk::11617:0:0",
		[11878] = "16:0:0:72:70:5699:4420:25809:Arch Druid Lathorius::11876:11879:0",
		[11879] = "16:0:0:72:70:5940:3060:25862:Khu'nok the Behemoth::11878:0:0",
		[11626] = "16:0:0:71:68:4360:8040:25450:Veehja::11625:0:0",
		[11884] = "16:0:0:72:70:5699:4420:25812:Killinger the Den Watcher::0:0:0",
		[13412] = "16:0:0:80:80:3340:3439:26110:Librarian Serrah::0:13413:0",
		[13413] = "16:0:0:80:80:2940:2480:32548:Corastrasza::13412:0:0",
		[11892] = "16:0:0:72:70:5699:4420:25809:Arch Druid Lathorius::0:0:0",
		[11646] = "16:0:0:71:69:4520:3340:25262:Librarian Donathan::11590:11648:11679",
		[11648] = "16:0:0:71:69:4640:3280:25480:Librarian Normantis::11646:11663:11679",
		[11910] = "16:0:0:71:69:3300:3420:25314:Archmage Berinand::0:11911:0",
		[11912] = "16:0:0:71:69:3340:3439:26110:Librarian Serrah::0:11914:0",
		[11914] = "16:0:0:71:69:3340:3439:26110:Librarian Serrah::11912:0:0",
		[11663] = "16:0:0:71:69:4640:3280:25480:Librarian Normantis::11648:11671:11679",
		[11918] = "16:0:0:71:69:3320:3439:26117:Raelorasz::0:11936:11931",
		[11919] = "16:0:0:71:69:3320:3439:26117:Raelorasz::11936:11931:0",
		[11671] = "16:0:0:71:69:4520:3340:25262:Librarian Donathan::11663:11679:0",
		[11931] = "16:0:0:71:69:3320:3439:26117:Raelorasz::11919:0:0",
		[11679] = "16:0:0:71:69:4520:3340:25262:Librarian Donathan::11671:0:0",
		[11680] = "16:0:0:71:69:4520:3439:24795:Surristrasz::0:11681:11733",
		[11681] = "16:0:0:71:69:4640:3720:25356:Warmage Anzim::11680:11682:11733",
		[11682] = "16:0:0:71:69:4640:3240:25785:Archmage Evanor::11681:11733:0",
		[11559] = "16:0:0:71:69:4340:1380:25197:King Mrgl-Mrgl::0:0:0",
		[11941] = "18:0:0:71:69:3260:2780:25719:Coldarra Spellbinder::0:11943:0",
		[11561] = "16:0:0:71:69:4280:1360:25199:Brglmurgl::0:0:0",
		[11943] = "16:0:0:71:69:3320:3439:26117:Raelorasz::11941:0:0",
		[11563] = "16:0:0:71:69:4200:1280:25205:Mrmrglmr::11562:11565:11566",
		[11564] = "16:0:0:71:69:4200:1300:25211:Cleaver Bmurglbrm::0:0:0",
		[11946] = "16:0:0:71:69:3320:3420:26206:Keristrasza::0:11951:11973",
		[11566] = "16:0:0:72:69:4340:1380:25197:King Mrgl-Mrgl::11565:0:0",
		[11949] = "16:0:0:72:68:6380:4600:26169:Ataika::0:11950:11968",
		[11950] = "16:0:0:72:68:6380:4600:26169:Ataika::11949:11961:11968",
		[11951] = "16:0:0:71:69:3320:3420:26206:Keristrasza::11946:11957:11973",
		[11571] = "16:0:0:71:69:4340:1380:25197:King Mrgl-Mrgl::11704|11702:0:0",
		[11957] = "16:0:0:71:69:3320:3420:26206:Keristrasza::11951:11967:11973",
		[11961] = "16:0:0:72:68:6720:5480:26218:Elder Muahit::11950:11968:0",
		[12471] = "16:0:0:71:68:4400:7780:25636:Captured Tuskarr Prisoner::0:0:0",
		[12728] = "16:0:0:71:69:4500:3340:25291:Librarian Garren::11582:0:0",
		[11967] = "16:0:0:71:69:3320:3420:26206:Keristrasza::11957:11969:11973",
		[11968] = "16:0:0:71:68:6720:5480:26218:Elder Muahit::11961:0:0",
		[11969] = "16:0:0:71:69:3320:3439:26117:Raelorasz::11967:11973:0",
		[11590] = "16:0:0:71:69:4520:3340:25262:Librarian Donathan::11587:11646:11679",
		[11570] = "16:0:0:71:69:3780:2300:25208:Lurgglbr::0:0:0",
		[11569] = "16:0:0:71:69:3780:2300:28375:Glrglrglr::0:0:0",
		[11565] = "16:0:0:71:69:4200:1280:25205:Mrmrglmr::11563:11566:0",
		[11562] = "16:0:0:71:69:4340:1380:25197:King Mrgl-Mrgl::11560:11563:11566",
		[11582] = "16:0:0:71:69:4500:3340:25291:Librarian Garren::11576:12728:0",
		[11560] = "16:0:0:71:69:4340:1380:25197:King Mrgl-Mrgl::0:11562:11566",
		[11612] = "16:0:0:72:68:5420:3620:25292:Etaruk::0:11617:11623",
		[11900] = "16:0:0:71:69:3300:3420:25314:Archmage Berinand::0:11905:0",
		[11576] = "16:0:0:71:69:4500:3340:25291:Librarian Garren::0:11582:12728",
		[11609] = "32:0:0:72:68:5460:3590:187565:Elder Atkanok::11607:11610:0",
		[11610] = "32:0:0:72:68:5460:3590:187565:Elder Atkanok::11609:0:0",
		[11936] = "16:0:0:71:69:3320:3439:26117:Raelorasz::11918:11919:11931",
		[11871] = "16:0:0:72:70:5780:5500:25838:Hierophant Liandra::11870:11872:0",
		[11605] = "32:0:0:72:68:5460:3590:187565:Elder Atkanok::0:11607:11610",
		[11733] = "16:0:0:71:69:4520:3439:24795:Surristrasz::11682:0:0",
		[11607] = "32:0:0:72:68:5460:3590:187565:Elder Atkanok::11605:11609:11610",
		[11587] = "16:0:0:71:69:4520:3340:25262:Librarian Donathan::11575|11574:11590:11679",
		[12117] = "16:0:0:72:68:6720:5480:28382:Hotawa::0:0:0",
		[11864] = "16:0:0:72:70:5699:4420:25809:Arch Druid Lathorius::0:0:0",
		[11625] = "16:0:0:71:68:4360:8040:25450:Veehja::11620:11626:0",
	},
	[488] = {
		[12263] = "16:0:0:74:72:3520:3000:26593:Serinar::12261:0:0",
		[12043] = "16:0:0:74:72:5440:2360:26647:Narf::0:0:0",
		[12264] = "16:0:0:74:72:3520:3000:26593:Serinar::0:0:0",
		[12044] = "16:0:0:74:72:5500:2340:26660:Xink::12469:0:0",
		[12454] = "16:0:0:74:72:6320:7200:27255:Nishera the Garden Keeper::0:12456:0",
		[12045] = "16:0:0:74:72:5460:2320:26661:Zivlix::0:12046:12047",
		[12266] = "16:0:0:74:72:3520:3000:26593:Serinar::12267:0:0",
		[12046] = "16:0:0:74:72:5460:2320:26661:Zivlix::12045:12047:0",
		[12456] = "16:0:0:74:72:6320:7200:27255:Nishera the Garden Keeper::12454:0:0",
		[12047] = "16:0:0:74:72:5460:2320:26661:Zivlix::12046:0:0",
		[12079] = "16:0:0:74:72:5900:1780:26473:Ko'char the Unbreakable::0:0:0",
		[12458] = "16:0:0:74:72:5960:5440:27785:Lord Itharius::0:12459:0",
		[12049] = "16:0:0:74:72:5500:2340:26660:Xink::0:0:0",
		[12459] = "16:0:0:74:72:5960:5440:27785:Lord Itharius::12458:0:0",
		[12050] = "16:0:0:74:72:5500:2340:26660:Xink::0:0:0",
		[13343] = "16:0:0:80:80:6000:5440:27856:Chromie::0:0:0",
		[12052] = "16:0:0:74:72:5440:2360:26647:Narf::0:0:0",
		[11958] = "16:0:0:72:71:4800:7480:26194:Elder Ko'nani::0:11959:0",
		[12148] = "16:0:0:73:72:6000:5520:26983:Aurastrasza::12147|12146:12149:12151",
		[12149] = "16:0:0:73:72:6000:5520:26983:Aurastrasza::12148:12150:12151",
		[12150] = "16:0:0:74:72:6000:5520:26983:Aurastrasza::12149:12151:0",
		[12497] = "16:0:0:74:71:5980:5460:26917:Alexstrasza the Life-Binder::12495|12496:12498:0",
		[12151] = "16:0:0:74:72:6000:5520:26983:Aurastrasza::12150:0:0",
		[12435] = "16:0:0:74:71:5980:5460:26917:Alexstrasza the Life-Binder::12123|12124:12372:0",
		[12017] = "16:0:0:73:71:4760:7660:26245:Tua'kea::12016:0:0",
		[12080] = "16:0:0:74:72:5900:1780:26473:Ko'char the Unbreakable::0:0:0",
		[12028] = "16:0:0:72:71:4900:7560:26595:Toalu'u the Mystic::0:12030:12032",
		[12016] = "16:0:0:72:71:4760:7660:26245:Tua'kea::12011:12017:0",
		[12470] = "16:0:0:75:72:6000:5440:27856:Chromie::0:0:0",
		[12078] = "16:0:0:74:72:5940:1800:26659:Zort::0:0:0",
		[12030] = "16:0:0:72:71:4900:7560:26595:Toalu'u the Mystic::12028:12031:12032",
		[12077] = "16:0:0:74:72:5940:1800:26659:Zort::12076:0:0",
		[12031] = "32:0:0:72:71:3670:6510:188419:Elder Mana'loa::12030:12032:0",
		[12013] = "16:0:0:73:71:2420:6000:26501:Ethenial Moonshadow::12006:0:0",
		[12032] = "32:0:0:72:71:3670:6510:188419:Elder Mana'loa::12031:0:0",
		[12076] = "16:0:0:74:72:5940:1800:26659:Zort::12075:12077:0",
		[12789] = "16:0:0:75:74:8400:2600:28228:Crusader Valus::0:0:0",
		[12267] = "16:0:0:75:72:3520:3000:26593:Serinar::12265:12266:0",
		[12075] = "16:0:0:74:72:5940:1800:26659:Zort::12112:12076:12077",
		[12011] = "32:0:0:72:71:4770:7990:188364:Wrecked Crab Trap::0:12016:12017",
		[12265] = "16:0:0:74:72:3520:3000:26593:Serinar::0:12267:12266",
		[12009] = "16:0:0:72:71:4760:7660:26245:Tua'kea::0:0:0",
		[12469] = "16:0:0:74:72:4840:2400:26896:Nozzlerust Supply Runner::0:12044:0",
		[12006] = "16:0:0:72:71:2420:6000:26501:Ethenial Moonshadow::0:12013:0",
		[12112] = "16:0:0:74:72:5440:2360:26647:Narf::0:12075:12077",
		[12447] = "16:0:0:74:72:6000:5420:27765:Nalice::0:0:0",
		[12542] = "16:0:0:74:74:8720:5740:27348:Tilda Darathan::0:12545:0",
		[13078] = "16:0:0:80:77:5980:5460:26917:Alexstrasza the Life-Binder::13077:13079:0",
		[12498] = "16:0:0:74:71:5960:5340:26949:Torastrasza::12497:0:0",
		[13079] = "16:0:0:80:77:5980:5460:26917:Alexstrasza the Life-Binder::13078:0:0",
		[12545] = "16:0:0:74:74:8400:2600:28228:Crusader Valus::12542:0:0",
		[12261] = "16:0:0:74:72:3520:3000:26593:Serinar::0:12263:0",
		[12419] = "18:0:0:75:71:4760:4920:27680:Dahlia Suntouch::0:0:0",
		[12262] = "16:0:0:74:72:3520:3000:26593:Serinar::0:0:0",
		[11959] = "16:0:0:73:71:4800:7480:26194:Elder Ko'nani::11958:0:0",
	},
	[504] = {
		[12790] = "16:0:0:74:68:5659:4660:29156:Archmage Celindra::12791|12796|12794:0:0",
		[12974] = "16:0:0:77:75:5320:4880:30137:Shifty Vickers::0:12932:12948",
	},
	[490] = {
		[12042] = "16:0:0:74:73:1739:3640:26543:Image of Drakuru::12007:12802:12238",
		[12137] = "16:0:0:75:73:6939:1940:26924:Gan'jo::12121:12152:0",
		[12484] = "16:0:0:74:73:1580:4680:26519:Prigmon::0:0:0",
		[12327] = "16:0:0:75:73:4400:4800:27581:Ruuna the Blind::12328:12329:0",
		[11981] = "16:0:0:75:72:6360:2320:26335:Fallen Earthen Warrior::0:11982:12099",
		[12328] = "16:0:0:75:73:4400:4800:27581:Ruuna the Blind::12161|12425:12327:12329",
		[11982] = "16:0:0:75:72:6560:1780:26260:Kurun::11981:12070:12099",
		[12329] = "16:0:0:75:73:4400:4800:27581:Ruuna the Blind::12327:0:0",
		[12802] = "32:0:0:74:73:3700:3240:188365:Heart of the Ancients::12042:12068:12238",
		[12330] = "16:0:0:75:73:5740:4120:26935:Sasha::0:0:0",
		[11984] = "16:0:0:74:73:1620:4760:26424:Samir::12210|12208:0:0",
		[11985] = "16:0:0:75:72:6560:1780:26260:Kurun::12070:12081:12099",
		[12081] = "16:0:0:75:72:6560:1780:26260:Kurun::11985:12093:12099",
		[12113] = "16:0:0:75:73:7360:3400:26884:Harkor::0:0:0",
		[12082] = "16:0:0:75:73:6939:1739:26814:Harrison Jones::0:0:0",
		[12114] = "16:0:0:75:73:7360:3400:26884:Harkor::0:0:0",
		[11989] = "16:0:0:73:73:1640:4780:26423:Drakuru::0:11990:12238",
		[11990] = "16:0:0:74:73:1640:4780:26423:Drakuru::11989:11991:12238",
		[11991] = "16:0:0:74:73:1640:4780:26423:Drakuru::11990:12007:12238",
		[12120] = "16:0:0:75:73:7380:3400:26886:Kraz::12116:12121:12152",
		[12152] = "16:0:0:75:73:7380:3400:26886:Kraz::12137:0:0",
		[12121] = "16:0:0:75:73:7380:3400:26886:Kraz::12120:12137:12152",
		[12279] = "16:0:0:75:72:6899:4000:26484:Hugh Glass::0:0:0",
		[12029] = "16:0:0:74:73:1660:4820:26604:Mack Fearsen::0:12037:13129",
		[12093] = "16:0:0:75:72:7960:3360:26420:Gavrock::12081:12094:12099",
		[12094] = "16:0:0:75:72:7960:3360:26420:Gavrock::12093:12099:0",
		[12190] = "16:0:0:74:73:1580:4680:26519:Prigmon::12483:0:0",
		[12411] = "16:0:0:75:73:5740:4120:26935:Sasha::0:0:0",
		[12099] = "16:0:0:75:72:7960:3360:26420:Gavrock::12094:0:0",
		[12068] = "16:0:0:75:73:4500:2839:26701:Image of Drakuru::12802:12238:0",
		[12164] = "16:0:0:75:73:5740:4120:26935:Sasha::0:0:0",
		[12007] = "16:0:0:74:73:1320:6080:26500:Image of Drakuru::11991:12042:12238",
		[12134] = "16:0:0:75:73:5740:4120:26935:Sasha::0:0:0",
		[12483] = "16:0:0:75:73:1580:4680:26519:Prigmon::0:12190:0",
		[12070] = "16:0:0:75:72:6560:1780:26260:Kurun::11982:11985:12099",
		[12116] = "16:0:0:75:73:7380:3400:26886:Kraz::0:12120:12152",
	},
	[491] = {
		[11507] = "16:0:0:71:68:4020:6020:23804:Orfus of Kamagua::11504:11508:11510",
		[11476] = "16:0:0:71:69:3560:8020:24537:Handsome Terry::11459:0:0",
		[11319] = "16:0:0:71:69:6140:2280:24117:Lurielle::0:0:0",
		[11572] = "16:0:0:71:68:4020:6020:23804:Orfus of Kamagua::11568:0:0",
		[11510] = "16:0:0:71:68:3500:8080:24539:\"Silvermoon\" Harry::11509:0:0",
		[11479] = "16:0:0:71:69:3560:8060:24525:Zeh'gehn::0:11480:11471",
		[11511] = "16:0:0:71:68:3500:8080:24539:\"Silvermoon\" Harry::0:0:0",
		[11480] = "16:0:0:71:69:3560:8020:24537:Handsome Terry::11479:11471:0",
		[11512] = "16:0:0:71:68:3500:8080:24539:\"Silvermoon\" Harry::0:0:0",
		[11422] = "16:0:0:71:69:1980:2220:24544:Old Icefin::0:0:0",
		[11455] = "16:0:0:71:69:3560:8020:24537:Handsome Terry::11434:11473:11476",
		[11519] = "16:0:0:71:68:3500:8080:24539:\"Silvermoon\" Harry::0:11527:11530",
		[12118] = "16:0:0:72:68:2460:5880:24810:Anuniaq::0:0:0",
		[11457] = "16:0:0:71:69:2500:5699:24755:Elder Atuik::0:11458:0",
		[11458] = "16:0:0:71:69:2500:5699:24755:Elder Atuik::11457:0:0",
		[11459] = "16:0:0:71:69:3560:8060:24525:Zeh'gehn::11473:11476:0",
		[11428] = "16:0:0:71:69:6140:2280:24117:Lurielle::0:0:0",
		[11527] = "16:0:0:71:68:3720:7480:24910:Captain Ellis::11519:11529:11530",
		[11182] = "16:0:0:71:68:3760:5180:23870:Ember Clutch Ancient::0:0:0",
		[11466] = "16:0:0:71:69:3620:8040:24541:Taruk::11464:11467:0",
		[11315] = "16:0:0:71:69:6140:2280:24117:Lurielle::0:0:0",
		[11467] = "16:0:0:71:69:3620:8040:24541:Taruk::11466:0:0",
		[11434] = "16:0:0:71:69:3560:8020:24537:Handsome Terry::0:11455:11476",
		[11508] = "16:0:0:71:68:2500:5699:24755:Elder Atuik::11507:11509:11510",
		[11568] = "16:0:0:71:68:4020:6020:23804:Orfus of Kamagua::0:11572:0",
		[11469] = "16:0:0:71:69:3760:7940:24784:Scuttle Frostprow::0:0:0",
		[11504] = "16:0:0:71:68:4020:6020:23804:Orfus of Kamagua::11573:11507:11510",
		[11529] = "16:0:0:71:68:3720:7480:24910:Captain Ellis::11527:11530:0",
		[11313] = "16:0:0:71:69:6140:2280:24117:Lurielle::11302|11312:0:0",
		[11471] = "16:0:0:71:69:3540:7940:24741:Annie Bonn::11480:0:0",
		[11314] = "16:0:0:71:69:6140:2280:24117:Lurielle::0:0:0",
		[11530] = "16:0:0:71:68:3720:7480:24910:Captain Ellis::11529:0:0",
		[11567] = "16:0:0:71:68:3500:8080:24539:\"Silvermoon\" Harry::0:0:0",
		[11473] = "16:0:0:71:69:3560:8020:24537:Handsome Terry::11455:11459:11476",
		[11316] = "16:0:0:71:69:6140:2280:24117:Lurielle::0:0:0",
		[11509] = "16:0:0:71:68:2300:6260:24643:Grezzix Spindlesnap::11508:11510:0",
		[11456] = "16:0:0:71:69:2500:5699:24755:Elder Atuik::0:0:0",
		[11464] = "16:0:0:71:69:3620:8040:24541:Taruk::0:11466:11467",
	},
	[492] = {
		[13135] = "16:0:0:79:77:8300:7300:30714:Crusade Engineer Spitzpatrick::0:0:0",
		[13136] = "18:0:0:80:77:3060:6500:30597:Spiked Ghoul::0:0:0",
		[13137] = "16:0:0:80:77:3240:4280:30232:The Bone Witch::13133:13142:13213",
		[13138] = "16:0:0:80:77:3540:6640:30708:Crusader Olakin Sainrith::0:0:0",
		[13139] = "16:0:0:79:77:8280:7280:30683:Father Gustav::0:13141:13157",
		[13140] = "16:0:0:80:77:3540:6640:30708:Crusader Olakin Sainrith::0:0:0",
		[13141] = "16:0:0:79:77:8600:7580:30677:Highlord Tirion Fordring::13139:13157:0",
		[13142] = "16:0:0:80:77:3240:4280:30232:The Bone Witch::13137:13213:0",
		[13143] = "16:0:0:80:77:5400:7100:30944:Vereth the Cunning::13155:13145:0",
		[13144] = "16:0:0:80:77:3540:6640:30631:Darkrider Arly::0:0:0",
		[12891] = "16:0:0:80:77:4400:2460:29804:Baron Sliver::12887|12892:12893:0",
		[13146] = "16:0:0:80:77:5400:7100:30944:Vereth the Cunning::0:0:0",
		[13147] = "16:0:0:80:77:5400:7100:30944:Vereth the Cunning::0:0:0",
		[13152] = "16:0:0:80:77:3540:6640:30631:Darkrider Arly::0:0:0",
		[13155] = "16:0:0:80:77:4400:2460:30946:Keritose Bloodblade::0:13143:13145",
		[13157] = "16:0:0:79:77:8280:7280:30683:Father Gustav::13141:0:0",
		[13160] = "16:0:0:80:77:5400:7100:30944:Vereth the Cunning::0:0:0",
		[13161] = "16:0:0:80:77:5400:7100:30944:Vereth the Cunning::0:0:0",
		[13162] = "16:0:0:80:77:5400:7100:30944:Vereth the Cunning::0:0:0",
		[13163] = "16:0:0:80:77:5400:7100:30944:Vereth the Cunning::0:0:0",
		[13164] = "16:0:0:80:77:5400:7100:30944:Vereth the Cunning::0:0:0",
		[13039] = "16:0:0:78:77:8600:7580:30224:Crusader Lord Dalfors::0:0:0",
		[13040] = "16:0:0:78:77:8680:7660:30226:Father Gustav::0:0:0",
		[13168] = "16:0:0:80:77:4400:2460:30946:Keritose Bloodblade::0:0:0",
		[13169] = "16:0:0:80:77:4400:2460:30946:Keritose Bloodblade::0:0:0",
		[13170] = "16:0:0:80:77:4400:2460:30946:Keritose Bloodblade::0:0:0",
		[13044] = "16:0:0:78:77:8700:7580:30223:Crusade Commander Entari::0:13045:13086",
		[13172] = "16:0:0:80:77:4400:2460:30946:Keritose Bloodblade::0:0:0",
		[13174] = "16:0:0:80:77:4400:2460:30946:Keritose Bloodblade::0:0:0",
		[13308] = "16:0:0:80:77:5460:5920:31892:Darkspeaker R'khem::0:0:0",
		[13059] = "16:0:0:80:77:3600:3300:30406:Bethod Feigr::0:0:0",
		[12806] = "16:0:0:80:77:4280:2500:29343:Baron Sliver::0:12807:12814",
		[12807] = "16:0:0:80:77:1960:4800:29344:Lord-Commander Arete::12806:12810:12814",
		[12810] = "16:0:0:80:77:1960:4800:29344:Lord-Commander Arete::12807:12814:0",
		[12938] = "16:0:0:80:77:4280:2500:29343:Baron Sliver::12899|12898:12939:12943",
		[12939] = "16:0:0:80:77:4460:2039:30002:Duke Lankral::12938:12943:0",
		[13068] = "16:0:0:80:77:7980:7180:31044:Highlord Tirion Fordring::0:13072:13075",
		[13070] = "16:0:0:78:77:8740:7580:28179:Highlord Tirion Fordring::13045:13086:0",
		[13072] = "16:0:0:80:77:7980:3080:30562:Crusader Bridenbrad::13068:13073:13075",
		[13073] = "16:0:0:80:77:7980:7180:31044:Highlord Tirion Fordring::13072:13074:13075",
		[13076] = "16:0:0:80:77:7980:3080:30562:Crusader Bridenbrad::0:13077:13079",
		[13077] = "16:0:0:80:77:7980:7180:31044:Highlord Tirion Fordring::13076:13078:13079",
		[12951] = "16:0:0:80:77:4100:2380:30056:Vaelen the Flayed::12949:0:0",
		[13080] = "16:0:0:80:77:7980:3080:30562:Crusader Bridenbrad::0:13081:13082",
		[13081] = "16:0:0:80:77:7980:7180:31044:Highlord Tirion Fordring::13080:13082:0",
		[12955] = "16:0:0:80:77:4320:2520:30074:The Leaper::0:12999:0",
		[13083] = "32:0:0:80:77:7980:3090:192833:Bridenbrad's Possessions::0:0:0",
		[13211] = "16:0:0:80:77:3540:6640:30708:Crusader Olakin Sainrith::0:0:0",
		[13212] = "16:0:0:80:77:3540:6640:30631:Darkrider Arly::0:13220:13235",
		[13213] = "16:0:0:80:77:3240:4280:30232:The Bone Witch::13142:0:0",
		[13214] = "16:0:0:80:77:3080:2900:31135:Geirrvif::0:0:0",
		[13215] = "16:0:0:80:77:3080:2900:31135:Geirrvif::0:0:0",
		[13216] = "16:0:0:80:77:3080:2900:31135:Geirrvif::0:0:0",
		[13217] = "16:0:0:80:77:3080:2900:31135:Geirrvif::0:0:0",
		[13218] = "16:0:0:80:77:3080:2900:31135:Geirrvif::0:0:0",
		[13219] = "16:0:0:80:77:3080:2900:31135:Geirrvif::0:0:0",
		[13220] = "16:0:0:80:77:3540:6640:30631:Darkrider Arly::13212:13235:0",
		[12840] = "16:0:0:80:77:1960:4800:29344:Lord-Commander Arete::12839:12847:12852",
		[13042] = "16:0:0:80:77:3240:4280:30232:The Bone Witch::0:0:0",
		[12847] = "16:0:0:80:77:1960:4800:29344:Lord-Commander Arete::12840:12852:0",
		[13171] = "16:0:0:80:77:4400:2460:30946:Keritose Bloodblade::0:0:0",
		[13043] = "18:0:0:80:77:3400:3620:30409:Apprentice Osterkilgr::0:13091:13213",
		[13104] = "16:0:0:78:77:8600:7580:30677:Highlord Tirion Fordring::0:0:0",
		[13105] = "16:32:0:78:77:8600:7580:30677:Highlord Tirion Fordring::0:0:0",
		[12852] = "16:0:0:80:77:0940:4700:29560:Lord-Commander Arete::12847:0:0",
		[13106] = "16:0:0:80:77:4280:2500:29343:Baron Sliver::0:0:0",
		[13235] = "16:0:0:80:77:3540:6640:30631:Darkrider Arly::13220:0:0",
		[12982] = "16:0:0:80:77:4320:2100:30218:Vaelen the Flayed::13085:0:0",
		[13110] = "16:0:0:78:77:8280:7280:30683:Father Gustav::0:0:0",
		[13036] = "16:0:0:78:77:8740:7580:28179:Highlord Tirion Fordring::0:13008:0",
		[13092] = "16:0:0:80:77:3240:4280:30232:The Bone Witch::0:0:0",
		[13091] = "16:0:0:80:77:3240:4280:30232:The Bone Witch::13043:13121:13213",
		[13084] = "16:0:0:80:77:4460:2039:30002:Duke Lankral::0:0:0",
		[13145] = "16:0:0:80:77:5400:7100:30944:Vereth the Cunning::13143:0:0",
		[12893] = "16:0:0:80:77:4400:2460:29804:Baron Sliver::12891:0:0",
		[13117] = "16:0:0:80:77:3540:6640:30631:Darkrider Arly::0:0:0",
		[13118] = "16:0:0:78:77:8300:7280:30596:The Ebon Watcher::0:0:0",
		[13119] = "16:0:0:80:77:3540:6640:30631:Darkrider Arly::0:0:0",
		[13120] = "16:0:0:80:77:3540:6640:30631:Darkrider Arly::0:0:0",
		[13121] = "16:0:0:80:77:3240:4280:30232:The Bone Witch::13091:13133:13213",
		[13122] = "16:0:0:78:77:8300:7280:30596:The Ebon Watcher::0:0:0",
		[13086] = "16:0:0:78:77:8560:7600:30657:Siegemaster Fezzik::13070:0:0",
		[13085] = "16:0:0:80:77:4280:2500:29343:Baron Sliver::0:12982:0",
		[13125] = "16:0:0:79:77:8300:7280:30596:The Ebon Watcher::0:0:0",
		[12999] = "16:0:0:80:77:4320:2520:30074:The Leaper::12955:0:0",
		[12992] = "16:0:0:80:77:4340:2440:30216:Vile::0:13071:0",
		[13045] = "16:0:0:78:77:8700:7900:30227:Penumbrius::13044:13070:13086",
		[12814] = "16:0:0:80:77:1960:4800:29344:Lord-Commander Arete::12810:0:0",
		[13130] = "16:0:0:79:77:8300:7300:30686:Crusade Architect Silas::0:0:0",
		[12949] = "16:0:0:80:77:4100:2380:30056:Vaelen the Flayed::0:12951:0",
		[12943] = "16:0:0:80:77:4460:2039:30002:Duke Lankral::12939:0:0",
		[13133] = "16:0:0:80:77:3240:4280:30232:The Bone Witch::13121:13137:13213",
		[13134] = "16:0:0:80:77:3540:6640:30631:Darkrider Arly::0:0:0",
		[13008] = "16:0:0:78:77:8700:7580:30223:Crusade Commander Entari::13036:0:0",
	},
	[493] = {
		[12634] = "16:0:0:76:76:2680:6000:29157:Grimbooze Thunderbrew::0:12644:12645",
		[12644] = "16:0:0:76:76:2680:6000:29157:Grimbooze Thunderbrew::12634:12645:0",
		[12645] = "16:0:0:76:76:2680:6000:29157:Grimbooze Thunderbrew::12644:0:0",
		[12520] = "16:0:0:76:76:2700:5860:27986:Hemet Nesingwary::0:12526:12544",
		[12522] = "16:0:0:76:76:2540:5840:28033:Weslex Quickwrench::0:12523:0",
		[12523] = "16:0:0:76:76:2540:5840:28033:Weslex Quickwrench::12522:0:0",
		[12651] = "16:0:0:77:76:2700:5860:27986:Hemet Nesingwary::0:0:0",
		[12525] = "16:0:0:76:76:2720:5980:28032:Debaar::12524:0:0",
		[12526] = "16:0:0:76:76:2700:5860:27986:Hemet Nesingwary::12520:12543:12544",
		[12654] = "16:0:0:76:76:5040:6200:28568:Tamara Wobblesprocket::0:0:0",
		[12658] = "16:0:0:77:76:4220:2880:28374:Zootfizzle::0:0:0",
		[12532] = "16:0:0:77:76:5540:6959:28138:Elder Harkek::0:12531:0",
		[12660] = "16:0:0:77:77:6440:4860:27801:Avatar of Freya::0:0:0",
		[12543] = "16:0:0:76:76:2560:6640:28191:Oracle Soo-rahm::12526:12544:0",
		[12671] = "16:0:0:77:77:5000:6140:28746:Pilot Vic::12699:0:0",
		[12546] = "16:0:0:78:77:6440:4860:27801:Avatar of Freya::12797:0:0",
		[12548] = "16:0:0:78:77:6440:4860:27801:Avatar of Freya::12613:12547:12546",
		[12549] = "16:0:0:76:76:2660:5900:28031:Buck Cantwell::0:12550:12558",
		[12550] = "16:0:0:76:76:2660:5900:28031:Buck Cantwell::12549:12558:0",
		[12805] = "16:0:0:77:77:6440:4860:27801:Avatar of Freya::0:0:0",
		[12681] = "16:0:0:77:76:4200:2859:28771:Colvin Norrington::0:0:0",
		[12683] = "16:0:0:77:76:4200:2859:28771:Colvin Norrington::0:0:0",
		[12558] = "16:0:0:76:76:2660:5900:28031:Buck Cantwell::12550:0:0",
		[12559] = "16:0:0:77:77:6440:4860:27801:Avatar of Freya::12621:12613:12546",
		[12560] = "16:0:0:76:76:2720:5980:28032:Debaar::12551:12569:0",
		[12561] = "16:0:0:77:77:6440:4860:27801:Avatar of Freya::12803:12611:12608",
		[12691] = "32:0:0:78:77:8040:5580:190768:Timeworn Coffer::0:0:0",
		[12692] = "16:0:0:77:76:7200:5699:28668:Zepik the Gorloc Hunter::0:0:0",
		[12696] = "16:0:0:77:77:2540:5840:28266:Professor Calvert::0:0:0",
		[12570] = "16:0:0:77:76:5560:6500:28217:Injured Rainspeaker Oracle::0:12571:12573",
		[12571] = "16:0:0:77:76:5440:5639:28027:High-Oracle Soo-say::12570:12573:0",
		[12699] = "16:0:0:77:77:5000:6140:28746:Pilot Vic::0:12671:0",
		[12573] = "16:0:0:77:76:5440:5639:28027:High-Oracle Soo-say::12571:0:0",
		[12574] = "16:0:0:77:76:5440:5639:28027:High-Oracle Soo-say::0:0:0",
		[12575] = "16:0:0:77:76:4220:3860:28114:Mistcaller Soo-gan::0:0:0",
		[12576] = "16:0:0:77:76:4220:3860:28114:Mistcaller Soo-gan::0:0:0",
		[12577] = "16:0:0:77:76:4220:3860:28114:Mistcaller Soo-gan::0:12578:0",
		[12578] = "16:0:0:77:76:5440:5639:28027:High-Oracle Soo-say::12577:0:0",
		[12579] = "16:0:0:77:76:5440:5659:28122:Moodle::0:0:0",
		[12580] = "16:0:0:77:76:5440:5659:28122:Moodle::0:0:0",
		[12581] = "16:0:0:77:76:5440:5659:28122:Moodle::0:0:0",
		[12589] = "16:0:0:76:76:2700:5980:28328:Drostan::0:12592:0",
		[12592] = "16:0:0:76:76:2700:5980:28328:Drostan::12589:0:0",
		[12595] = "16:0:0:77:76:2700:5860:27986:Hemet Nesingwary::0:0:0",
		[12603] = "16:0:0:77:76:4220:2880:28376:Dorian Drakestalker::0:0:0",
		[12605] = "16:0:0:77:76:4220:2880:28376:Dorian Drakestalker::0:0:0",
		[12607] = "16:0:0:77:76:4220:2880:28374:Zootfizzle::0:0:0",
		[12608] = "16:0:0:78:77:6500:6020:28464:Cultist Corpse::12612:0:0",
		[12611] = "16:0:0:77:77:6440:4860:27801:Avatar of Freya::12561:12612:12608",
		[12612] = "16:0:0:77:77:6440:4860:27801:Avatar of Freya::12611:12608:0",
		[12613] = "16:0:0:77:77:6440:4860:27801:Avatar of Freya::12559:12548:12546",
		[12614] = "16:0:0:77:76:4220:2880:28376:Dorian Drakestalker::0:0:0",
		[12551] = "16:0:0:76:76:2720:5980:28032:Debaar::0:12560:12569",
		[12489] = "16:0:0:76:76:3960:5860:27987:Monte Muzzleshot::12521:0:0",
		[12617] = "16:0:0:77:77:6440:4860:27801:Avatar of Freya::0:0:0",
		[12524] = "16:0:0:76:76:2720:5980:28032:Debaar::0:12525:0",
		[12556] = "16:0:0:76:76:2700:5860:27986:Hemet Nesingwary::0:0:0",
		[12620] = "16:0:0:77:77:6440:4860:27801:Avatar of Freya::0:12621:12546",
		[12621] = "16:0:0:77:77:6440:4860:27801:Avatar of Freya::12620:12559:12546",
		[12804] = "16:0:0:76:76:2680:5960:28046:Korg the Cleaver::0:0:0",
		[12688] = "16:0:0:76:76:3560:4720:28787:Engineer Helice::0:0:0",
		[12624] = "16:0:0:76:76:2680:5900:28497:Chad::0:0:0",
		[12803] = "16:0:0:78:77:5000:6140:28746:Pilot Vic::0:12561:12608",
		[12569] = "16:0:0:76:76:2720:5980:28032:Debaar::12560:0:0",
		[12544] = "16:0:0:76:76:2560:6640:28191:Oracle Soo-rahm::12543:0:0",
	},
	[495] = {
		[13009] = "16:0:0:80:77:6320:6320:30127:Njormeld::12924:13050:13057",
		[13010] = "16:0:0:80:77:3340:5800:29445:Thorim::13051:13057:0",
		[13011] = "16:0:0:80:77:6540:6020:30105:King Jokkum::0:0:0",
		[12886] = "16:0:0:80:77:5080:6560:29796:Gretta the Arbiter::13062:13064:12915",
		[12888] = "18:0:0:80:77:3760:4520:29724:Library Guardian::0:0:0",
		[12889] = "16:0:0:80:77:3760:4640:29806:SCRAP-E::0:0:0",
		[12900] = "16:0:0:80:77:4980:7180:29839:Astrid Bjornrittar::13063:0:0",
		[12905] = "16:0:0:79:77:4280:6879:29481:Lok'lira the Crone::12841:12906:12900",
		[12906] = "16:0:0:79:77:4440:6879:29885:Mildred the Cruel::12905:12907:12900",
		[12907] = "16:0:0:79:77:4440:6879:29885:Mildred the Cruel::12906:12908:12900",
		[13035] = "16:0:0:80:77:5620:5140:30295:Thorim::0:0:0",
		[13420] = "34:0:0:77:77:7250:5570:193997:Everfrost Chip::0:0:0",
		[12915] = "16:0:0:80:77:3340:5800:29445:Thorim::13064:0:0",
		[13047] = "16:0:0:80:77:5620:5140:30295:Thorim::0:13108:0",
		[12921] = "16:0:0:79:77:4280:6879:29481:Lok'lira the Crone::12908:12969:12900",
		[12922] = "18:0:0:80:77:7280:6360:29375:Stormforged Iron Giant::0:12956:0",
		[13050] = "16:0:0:80:77:3340:5800:29445:Thorim::13009:13051:13057",
		[12924] = "16:0:0:80:77:3340:5800:29445:Thorim::0:13009:13057",
		[12925] = "16:0:0:80:77:4840:7200:30041:Thyra Kvinnshal::0:0:0",
		[13057] = "16:0:0:80:77:7140:4880:30390:Thorim::13010:0:0",
		[12931] = "16:0:0:80:77:3140:3800:29801:Bouldercrag the Rockshaper::0:0:0",
		[13061] = "16:0:0:79:77:4980:7180:29839:Astrid Bjornrittar::12997:13062:12915",
		[13062] = "16:0:0:80:77:4740:6899:29975:Lok'lira the Crone::13061:12886:12915",
		[13063] = "16:0:0:80:77:5300:6560:29592:Brijana::12856:12900:0",
		[13064] = "16:0:0:80:77:3340:5800:29445:Thorim::12886:12915:0",
		[12942] = "16:0:0:80:77:4840:7200:29997:Iva the Vengeful::0:0:0",
		[12818] = "16:0:0:78:77:4100:8640:29431:Jeer Sparksocket::0:12819:12820",
		[12819] = "16:0:0:78:77:4100:8640:29431:Jeer Sparksocket::12818:12826:12820",
		[12820] = "16:0:0:78:77:4079:8540:29428:Ricket::12826:0:0",
		[12821] = "16:0:0:78:77:4079:8540:29428:Ricket::0:12822:0",
		[12822] = "16:0:0:78:77:4079:8540:29428:Ricket::12821:0:0",
		[12823] = "16:0:0:78:77:5040:8159:29432:Gino::0:12824:0",
		[12824] = "16:0:0:78:77:5040:8159:29432:Gino::12823:0:0",
		[12953] = "32:0:0:80:77:2400:6170:192072:Harpoon Crate::0:0:0",
		[12827] = "16:0:0:78:77:4079:8540:29428:Ricket::0:0:0",
		[12828] = "16:0:0:78:77:4079:8540:29428:Ricket::0:0:0",
		[12829] = "16:0:0:78:77:4160:8000:29430:Tore Rumblewrench::0:0:0",
		[12830] = "16:0:0:78:77:4160:8000:29430:Tore Rumblewrench::0:0:0",
		[12831] = "16:0:0:78:77:4340:7520:29434:Injured Goblin Miner::0:12832:0",
		[12832] = "16:0:0:78:77:4340:7520:29434:Injured Goblin Miner::12831:0:0",
		[12836] = "16:0:0:78:77:4079:8540:29428:Ricket::0:0:0",
		[12964] = "16:0:0:80:77:3140:3800:29801:Bouldercrag the Rockshaper::0:0:0",
		[12965] = "16:0:0:80:77:3140:3800:29801:Bouldercrag the Rockshaper::0:0:0",
		[12966] = "16:0:0:80:77:6540:6020:30105:King Jokkum::0:12967:0",
		[12967] = "16:0:0:80:77:7520:6340:30099:Njormeld::12966:0:0",
		[12968] = "16:0:0:80:77:4840:7200:29997:Iva the Vengeful::0:0:0",
		[12969] = "16:0:0:80:77:4740:6899:29975:Lok'lira the Crone::12921:12970:12900",
		[12970] = "16:0:0:80:77:4740:6899:29975:Lok'lira the Crone::12969:12971:12900",
		[12971] = "16:0:0:80:77:4740:6899:29975:Lok'lira the Crone::12970:12972:12900",
		[12972] = "16:0:0:80:77:4740:6899:29975:Lok'lira the Crone::12971:12851:12900",
		[12846] = "16:0:0:78:77:4100:8600:29473:Gretchen Fizzlespark::12843:12841:12900",
		[12975] = "16:0:0:80:77:6540:6020:30105:King Jokkum::0:12976:0",
		[12976] = "16:0:0:80:77:6540:6020:30105:King Jokkum::12975:0:0",
		[12978] = "16:0:0:80:77:3120:3800:30152:Bruor Ironbane::0:0:0",
		[12979] = "18:0:0:80:77:2460:4300:29380:Stormforged War Golem::0:12980:0",
		[12980] = "16:0:0:80:77:3120:3800:30152:Bruor Ironbane::12979:0:0",
		[12983] = "16:0:0:80:77:4980:7180:29839:Astrid Bjornrittar::0:12996:12915",
		[12984] = "16:0:0:80:77:3140:3800:29801:Bouldercrag the Rockshaper::0:12988:0",
		[12985] = "16:0:0:80:77:6320:6320:30127:Njormeld::0:12987:0",
		[12851] = "16:0:0:80:77:5300:6560:29592:Brijana::12972:12856:12900",
		[12987] = "16:0:0:80:77:6320:6320:30127:Njormeld::12985:0:0",
		[12988] = "16:0:0:80:77:3140:3800:29801:Bouldercrag the Rockshaper::12984:0:0",
		[12989] = "16:0:0:80:77:4980:7180:29839:Astrid Bjornrittar::0:0:0",
		[12908] = "16:0:0:79:77:4440:6879:29885:Mildred the Cruel::12907:12921:12900",
		[12991] = "16:0:0:80:77:3120:3800:30152:Bruor Ironbane::0:0:0",
		[12844] = "16:0:0:79:77:4100:8600:29473:Gretchen Fizzlespark::0:0:0",
		[12993] = "16:0:0:80:77:3140:3800:29801:Bouldercrag the Rockshaper::0:12998:13007",
		[12843] = "16:0:0:79:77:4100:8600:29473:Gretchen Fizzlespark::0:12846:12900",
		[12956] = "32:0:0:80:77:7710:6280:192060:Fjorn's Anvil::12922:0:0",
		[12996] = "16:0:0:80:77:4980:7180:29839:Astrid Bjornrittar::12983:12997:12915",
		[12997] = "16:0:0:80:77:4980:7180:29839:Astrid Bjornrittar::12996:13061:12915",
		[12998] = "16:0:0:80:77:3140:3800:29801:Bouldercrag the Rockshaper::12993:13007:0",
		[12957] = "16:0:0:80:77:3140:3800:29801:Bouldercrag the Rockshaper::0:0:0",
		[12841] = "16:0:0:79:77:4280:6879:29481:Lok'lira the Crone::12846:12905:12900",
		[13001] = "16:0:0:80:77:6480:5900:30252:Lorekeeper Randvir::0:0:0",
		[12930] = "16:0:0:80:77:3140:3800:29801:Bouldercrag the Rockshaper::0:0:0",
		[12826] = "16:0:0:78:77:4100:8640:29431:Jeer Sparksocket::12819:12820:0",
		[13051] = "16:0:0:80:77:3340:5800:29445:Thorim::13050:13010:13057",
		[13005] = "16:0:0:80:77:5620:5140:30295:Thorim::0:0:0",
		[12937] = "16:0:0:80:77:3140:3800:29801:Bouldercrag the Rockshaper::0:0:0",
		[13007] = "16:0:0:80:77:3140:3800:29801:Bouldercrag the Rockshaper::12998:0:0",
		[12856] = "16:0:0:80:77:5300:6560:29592:Brijana::12851:13063:12900",
	},
	[496] = {
		[12627] = "16:0:0:77:74:5940:5800:28479:Witch Doctor Khufu::12623:0:0",
		[12628] = "16:0:0:77:74:5940:5800:28479:Witch Doctor Khufu::0:12632:0",
		[12883] = "32:0:0:75:74:3489:8390:191766:Orders From Drakuru::12902:12884:12630",
		[12884] = "16:0:0:75:74:3200:7560:29687:Crusader Lord Lantinga::12883:12630:0",
		[12631] = "18:0:0:75:74:1739:7080:28519:Withered Troll::0:12638|12637:12713",
		[12632] = "16:0:0:77:74:6360:7020:28401:Har'koa::12628:0:0",
		[12633] = "18:0:0:75:74:1739:7080:28519:Withered Troll::0:12638|12637:12713",
		[12507] = "18:0:0:76:74:4040:4700:28036:Champion of Sseratus::0:12510:12514",
		[12635] = "16:0:0:77:74:5980:5780:28527:Chronicler To'kini::0:0:0",
		[12637] = "16:0:0:75:74:1400:7380:28518:Stefan Vadu::12631&12633:12629|12643:12713",
		[12638] = "16:0:0:75:74:1400:7380:28518:Stefan Vadu::12631&12633:12629|12643:12713",
		[12639] = "16:0:0:77:74:5940:5639:28480:Element-Tamer Dagoda::0:0:0",
		[12894] = "16:0:0:75:74:3200:7560:29687:Crusader Lord Lantinga::0:12903:0",
		[12514] = "16:0:0:76:74:4060:6560:28062:Hexxer Ubungo::12510:0:0",
		[12642] = "16:0:0:77:74:6360:7020:28401:Har'koa::0:12646:12684",
		[12643] = "16:0:0:75:74:1400:7380:28518:Stefan Vadu::12638&12637:12648|12649:12713",
		[12646] = "16:0:0:77:74:5340:3900:28561:Spirit of Rhunok::12642:12647:12684",
		[12901] = "16:0:0:76:74:2520:6380:29688:Engineer Reed::0:0:0",
		[12902] = "16:0:0:75:74:3200:7560:29687:Crusader Lord Lantinga::0:12883:12630",
		[12903] = "16:0:0:76:74:2520:6400:29689:Crusader MacKellar::12894:0:0",
		[12904] = "16:0:0:76:74:1760:5760:29455:Gerk::0:0:0",
		[12652] = "16:0:0:75:74:1980:7540:28589:Gristlegut::0:0:0",
		[12653] = "16:0:0:77:74:5340:3900:28561:Spirit of Rhunok::12647:12665:12684",
		[12527] = "16:0:0:76:74:4120:6500:28204:Apprentice Pestlepot::0:0:0",
		[12655] = "16:0:0:77:74:5940:5800:28479:Witch Doctor Khufu::0:0:0",
		[12912] = "16:0:0:76:74:1980:5639:29647:Gymer::0:12914:12919",
		[12659] = "16:0:0:77:74:5920:5620:28484:Scalper Ahunae::12640:0:0",
		[13549] = "16:0:0:77:74:5980:5780:28527:Chronicler To'kini::0:0:0",
		[12661] = "16:0:0:75:74:1400:7380:28518:Stefan Vadu::12648&12649:12669:12713",
		[12916] = "16:0:0:76:74:2520:6380:29688:Engineer Reed::12914:12919:0",
		[12663] = "16:0:0:75:74:2720:4600:28503:Overlord Drakuru::0:0:0",
		[12664] = "16:0:0:75:74:2720:4600:28503:Overlord Drakuru::0:0:0",
		[12919] = "16:0:0:76:74:1980:5639:29647:Gymer::12916:0:0",
		[12666] = "16:0:0:77:74:6360:7020:28401:Har'koa::12665:12667:12684",
		[13556] = "16:0:0:77:74:7000:2100:33025:Ha'wana::0:0:0",
		[12795] = "16:0:0:75:74:1419:7400:28532:Bloodrose Datura::0:12503:0",
		[12796] = "16:0:0:74:74:4060:6680:29169:Magister Teronus III::0:12790:0",
		[12672] = "16:0:0:77:74:7520:5860:28030:Quetz'lun's Spirit::12667:12668:12684",
		[12673] = "16:0:0:75:74:2720:4600:28503:Overlord Drakuru::0:0:0",
		[12674] = "16:0:0:77:74:7520:5860:28030:Quetz'lun's Spirit::12668:12675:12684",
		[12675] = "16:0:0:77:74:7520:5860:28030:Quetz'lun's Spirit::12674:12684:0",
		[12676] = "16:0:0:75:74:1400:7380:28518:Stefan Vadu::12677:12713:0",
		[12677] = "16:0:0:75:74:1400:7380:28518:Stefan Vadu::12669:12676:12713",
		[12932] = "16:0:0:77:75:4840:5620:30007:Gurgthock::12974:12933:12948",
		[12552] = "16:0:0:76:74:5800:7200:28283:Sergeant Moonshard::0:12554:0",
		[12934] = "16:0:0:77:75:4840:5620:30007:Gurgthock::12933:12935:12948",
		[12554] = "16:0:0:76:74:5800:7200:28283:Sergeant Moonshard::12552:0:0",
		[12555] = "16:0:0:76:74:5820:7200:28284:Specialist Cogwheel::0:0:0",
		[12684] = "16:0:0:77:74:6360:7020:28401:Har'koa::12675:0:0",
		[12685] = "16:0:0:77:74:6360:7020:28401:Har'koa::0:0:0",
		[12686] = "16:0:0:75:74:2720:4600:28503:Overlord Drakuru::0:0:0",
		[12562] = "16:0:0:76:74:4020:6879:28309:Sub-Lieutenant Jax::0:0:0",
		[12690] = "16:0:0:75:74:2720:4600:28503:Overlord Drakuru::0:12710:0",
		[12565] = "16:0:0:76:74:4060:6560:28062:Hexxer Ubungo::0:0:0",
		[12948] = "16:0:0:78:75:4840:5620:30007:Gurgthock::12936:0:0",
		[12914] = "16:0:0:76:74:2520:6380:29688:Engineer Reed::12912:12916:12919",
		[12505] = "16:0:0:76:74:4020:6660:28039:Commander Kunz::0:12504:0",
		[12510] = "16:0:0:76:74:4060:6560:28062:Hexxer Ubungo::12507:12514:0",
		[12650] = "16:0:0:77:74:5980:5780:28527:Chronicler To'kini::0:0:0",
		[12640] = "16:0:0:77:74:5920:5620:28484:Scalper Ahunae::12622:12659:0",
		[12647] = "16:0:0:77:74:5340:3900:28561:Spirit of Rhunok::12646:12653:12684",
		[12649] = "16:0:0:75:74:1400:7380:28518:Stefan Vadu::12629&12643:12661:12713",
		[12648] = "16:0:0:75:74:1400:7380:28518:Stefan Vadu::12629&12643:12661:12713",
		[12707] = "16:0:0:77:74:5920:5620:28484:Scalper Ahunae::0:0:0",
		[12708] = "16:0:0:77:74:5940:5639:28480:Element-Tamer Dagoda::0:0:0",
		[12709] = "16:0:0:77:74:5980:5780:28527:Chronicler To'kini::0:0:0",
		[12710] = "16:0:0:75:74:2720:4600:28503:Overlord Drakuru::12690:0:0",
		[12584] = "16:0:0:76:74:5800:7240:28044:Captain Rupert::0:0:0",
		[12712] = "16:0:0:77:74:6360:7020:28401:Har'koa::0:12721:0",
		[12713] = "16:0:0:76:74:1400:7380:28518:Stefan Vadu::12676:0:0",
		[12583] = "16:0:0:76:74:5820:7200:28284:Specialist Cogwheel::0:0:0",
		[12516] = "16:0:0:76:74:4060:6560:28062:Hexxer Ubungo::0:12623:12627",
		[13097] = "16:0:0:78:74:6360:7020:28401:Har'koa::0:13096:0",
		[12512] = "16:0:0:76:74:5860:7240:28125:Dr. Rogers::0:0:0",
		[13099] = "16:0:0:78:74:5980:5780:28527:Chronicler To'kini::0:13098:0",
		[12508] = "16:0:0:76:74:4040:4820:28099:Corporal Maga::0:0:0",
		[12506] = "16:0:0:76:74:4060:6560:28062:Hexxer Ubungo::0:0:0",
		[12721] = "16:0:0:77:74:6360:7020:28401:Har'koa::12712:0:0",
		[12504] = "16:0:0:76:74:4040:4820:28056:Sergeant Stackhammer::12505:0:0",
		[12596] = "16:0:0:76:74:4020:6660:28039:Commander Kunz::0:0:0",
		[12597] = "16:0:0:76:74:4880:7880:28042:Captain Brandon::0:0:0",
		[12598] = "16:0:0:76:74:5800:7240:28044:Captain Rupert::0:0:0",
		[12599] = "16:0:0:76:74:4800:6380:28043:Captain Grondel::0:0:0",
		[12793] = "16:0:0:75:74:5940:5800:28479:Witch Doctor Khufu::0:0:0",
		[12799] = "16:0:0:75:74:3560:5220:28045:Captain Arnath::0:0:0",
		[12729] = "16:0:0:77:74:5940:5800:28479:Witch Doctor Khufu::0:12730:0",
		[12857] = "32:0:0:75:74:3220:7570:191728:Wanted!::0:0:0",
		[12503] = "16:0:0:76:74:3940:6680:28059:Commander Falstaav::12795:0:0",
		[12859] = "16:0:0:75:74:3200:7560:29733:Elder Shaman Moky::0:0:0",
		[12606] = "16:0:0:76:74:5800:7240:28044:Captain Rupert::0:0:0",
		[12861] = "16:0:0:75:74:3220:7560:29690:Chief Rageclaw::0:0:0",
		[12553] = "16:0:0:76:74:5820:7200:28284:Specialist Cogwheel::0:0:0",
		[12609] = "16:0:0:76:74:3560:5220:28045:Captain Arnath::0:0:0",
		[12610] = "16:0:0:76:74:3560:5220:28045:Captain Arnath::0:0:0",
		[12935] = "16:0:0:77:75:4840:5620:30007:Gurgthock::12934:12936:12948",
		[12662] = "16:0:0:77:74:5940:5639:28480:Element-Tamer Dagoda::0:0:0",
		[12740] = "16:0:0:76:74:3940:6680:28059:Commander Falstaav::0:0:0",
		[12933] = "16:0:0:77:75:4840:5620:30007:Gurgthock::12932:12934:12948",
		[12615] = "16:0:0:77:74:5940:5800:28479:Witch Doctor Khufu::0:0:0",
		[12936] = "16:0:0:77:75:4840:5620:30007:Gurgthock::12935:12948:0",
		[12665] = "16:0:0:77:74:6360:7020:28401:Har'koa::12653:12666:12684",
		[12630] = "16:0:0:75:74:1400:7380:28518:Stefan Vadu::12884:0:0",
		[12557] = "16:0:0:76:74:3500:5200:28205:Alchemist Finklestein::0:0:0",
		[12667] = "16:0:0:77:74:6360:7020:28401:Har'koa::12666:12672:12684",
		[12629] = "16:0:0:75:74:1400:7380:28518:Stefan Vadu::12638&12637:12648|12649:12713",
		[12622] = "16:0:0:77:74:5920:5620:28484:Scalper Ahunae::0:12640:12659",
		[12623] = "16:0:0:77:74:4060:6560:28062:Hexxer Ubungo::12516:12627:0",
		[12792] = "16:0:0:75:74:4020:6660:28039:Commander Kunz::0:0:0",
		[12730] = "16:0:0:78:74:6360:7020:28401:Har'koa::12729:0:0",
		[12668] = "16:0:0:77:74:7520:5860:28030:Quetz'lun's Spirit::12672:12674:12684",
		[12669] = "16:0:0:75:74:1400:7380:28518:Stefan Vadu::12661:12677:12713",
	},
})