import 'package:flutter/material.dart';
import 'package:audio_book/main/utils/Lipsum.dart' as lipsum;
import 'package:audio_book/musicPodcast/models/MusicModel.dart';
import 'package:audio_book/musicPodcast/screen/MPAlbumsScreen.dart';
import 'package:audio_book/musicPodcast/screen/MPArtistsScreen.dart';
import 'package:audio_book/musicPodcast/screen/MPEventsScreen.dart';
import 'package:audio_book/musicPodcast/screen/MPNewsScreen.dart';
import 'package:audio_book/musicPodcast/screen/MPPlayListScreen.dart';
import 'package:audio_book/musicPodcast/screen/MPPodCastScreen.dart';
import 'package:audio_book/musicPodcast/screen/MPProfileScreen.dart';
import 'package:audio_book/musicPodcast/screen/MPSettingScreen.dart';
import 'package:audio_book/musicPodcast/screen/MPSongsScreen.dart';
import 'package:audio_book/musicPodcast/utils/MPImages.dart';

List<DrawerList> getDrawerList() {
  List<DrawerList> drawerList = [];
  drawerList.add(DrawerList(name: "Profile", widget: MPProfileScreen(isTab: true)));
  drawerList.add(DrawerList(name: "Books", widget: MPSongsScreen()));
  // drawerList.add(DrawerList(name: "Playlists", widget: MPArtistsScreen(name: 'Artists')));
  drawerList.add(DrawerList(name: "Playlists", widget: MPAlbumsScreen(isTab: false)));
  drawerList.add(DrawerList(name: "Podcasts", widget: MPPodCastScreen(name: 'Podcasts')));
  drawerList.add(DrawerList(name: "News", widget: MPNewsScreen(name: 'News')));
  drawerList.add(DrawerList(name: "Events", widget: MPEventsScreen(name: 'Events')));
  // drawerList.add(DrawerList(name: "Playlist", widget: MPPlayListScreen()));
  drawerList.add(DrawerList(name: "Setting", widget: MPSettingScreen()));

  return drawerList;
}

List<NewsList> getNewsList() {
  List<NewsList> newsList = [];
  newsList.add(NewsList(img: mpImages_1, name: lipsum.createWord(numWords: 2), description: lipsum.createSentence(numSentences: 2)));
  newsList.add(NewsList(img: mpImages_3, name: lipsum.createWord(numWords: 2), description: lipsum.createSentence(numSentences: 2)));
  newsList.add(NewsList(img: mpImages_5, name: lipsum.createWord(numWords: 2), description: lipsum.createSentence(numSentences: 2)));
  newsList.add(NewsList(img: mpImages_7, name: lipsum.createWord(numWords: 2), description: lipsum.createSentence(numSentences: 2)));

  return newsList;
}

List<MusicModel> getDisCoverList() {
  List<MusicModel> list = [];
  list.add(MusicModel(title: "Harry Portter Vol 7", img: mpImages_1, subtitle: "J. K. Rowling"));
  list.add(MusicModel(title: "God Father", img: mpImages_2, subtitle: "Mario Puzo"));
  list.add(MusicModel(title: "Tôi Thấy Hoa Vàng Trên Cỏ Xanh", img: mpImages_3, subtitle: "Nguyễn Nhật Ánh"));
  list.add(MusicModel(title: "Mắt biếc", img: mpImages_4, subtitle: "Nguyễn Nhật Ánh"));
  // list.add(MusicModel(title: lipsum.createWord(numWords: 2), img: mpImages_5, subtitle: lipsum.createWord(numWords: 2)));

  return list;
}

List<MusicModel> getSongsList() {
  List<MusicModel> songsList = [];

  songsList.add(MusicModel(title: lipsum.createWord(numWords: 2), subtitle: lipsum.createWord(numWords: 2), number1: 3.5, like: false));
  songsList.add(MusicModel(title: lipsum.createWord(numWords: 2), subtitle: lipsum.createWord(numWords: 2), number1: 4.0, like: true));
  songsList.add(MusicModel(title: lipsum.createWord(numWords: 2), subtitle: lipsum.createWord(numWords: 2), number1: 1.5, like: false));
  songsList.add(MusicModel(title: lipsum.createWord(numWords: 2), subtitle: lipsum.createWord(numWords: 2), number1: 3.5, like: false));
  songsList.add(MusicModel(title: lipsum.createWord(numWords: 2), subtitle: lipsum.createWord(numWords: 2), number1: 4.0, like: true));
  songsList.add(MusicModel(title: lipsum.createWord(numWords: 2), subtitle: lipsum.createWord(numWords: 2), number1: 2.5, like: false));
  songsList.add(MusicModel(title: lipsum.createWord(numWords: 2), subtitle: lipsum.createWord(numWords: 2), number1: 3.5, like: true));
  songsList.add(MusicModel(title: lipsum.createWord(numWords: 2), subtitle: lipsum.createWord(numWords: 2), number1: 1.0, like: false));
  songsList.add(MusicModel(title: lipsum.createWord(numWords: 2), subtitle: lipsum.createWord(numWords: 2), number1: 2.0, like: true));
  songsList.add(MusicModel(title: lipsum.createWord(numWords: 2), subtitle: lipsum.createWord(numWords: 2), number1: 3.0, like: false));

  return songsList;
}

List<MusicModel> getArtistsList() {
  List<MusicModel> list = [];
  list.add(MusicModel(title: lipsum.createWord(numWords: 2), img: mpImages_7));
  list.add(MusicModel(title: lipsum.createWord(numWords: 2), img: mpImages_9));
  list.add(MusicModel(title: lipsum.createWord(numWords: 2), img: mpImages_11));
  list.add(MusicModel(title: lipsum.createWord(numWords: 2), img: mpImages_13));
  list.add(MusicModel(title: lipsum.createWord(numWords: 2), img: mpImages_15));
  list.add(MusicModel(title: lipsum.createWord(numWords: 2), img: mpImages_17));
  list.add(MusicModel(title: lipsum.createWord(numWords: 2), img: mpImages_2));
  list.add(MusicModel(title: lipsum.createWord(numWords: 2), img: mpImages_4));
  list.add(MusicModel(title: lipsum.createWord(numWords: 2), img: mpImages_6));
  list.add(MusicModel(title: lipsum.createWord(numWords: 2), img: mpImages_8));

  return list;
}

List<MusicModel> getTrendList1() {
  List<MusicModel> trendList1 = [];
  trendList1.add(MusicModel(title: 'Radio Super', img: mpImages_10, subtitle: '98.3 Hz'));
  trendList1.add(MusicModel(title: 'Radio Jazz', img: mpImages_12, subtitle: '94.4 Hz'));
  trendList1.add(MusicModel(title: 'Radio Podcast', img: mpImages_14, subtitle: '91.6 Hz'));
  trendList1.add(MusicModel(title: 'Radio Metal', img: mpImages_16, subtitle: '93.8 Hz'));
  trendList1.add(MusicModel(title: 'Radio Artist', img: mpImages_3, subtitle: '101.01 Hz'));
  trendList1.add(MusicModel(title: 'Radio Hip Hop', img: mpImages_6, subtitle: '25.5 Hz'));
  trendList1.add(MusicModel(title: 'Radio Punk', img: mpImages_9, subtitle: '12.5 Hz'));
  trendList1.add(MusicModel(title: 'Radio Classic', img: mpImages_12, subtitle: '98.5 Hz'));
  trendList1.add(MusicModel(title: 'Radio Pop', img: mpImages_15, subtitle: '96.8 Hz'));
  trendList1.add(MusicModel(title: 'Radio Albums', img: mpImages_17, subtitle: '100.5 Hz'));

  return trendList1;
}

List<MusicModel> getPodCastDetailList() {
  List<MusicModel> podCastDetailList = [];
  podCastDetailList.add(MusicModel(title: "Episodes 1", subtitle: "2 July, 2008", number1: 42.25));
  podCastDetailList.add(MusicModel(title: "Episodes 2", subtitle: "11 Sep, 2012", number1: 41.24));
  podCastDetailList.add(MusicModel(title: "Episodes 3", subtitle: "25 June, 2018", number1: 35.25));
  podCastDetailList.add(MusicModel(title: "Episodes 4", subtitle: "30 Aug, 2015", number1: 30.55));
  podCastDetailList.add(MusicModel(title: "Episodes 5", subtitle: "06 Dec, 2016", number1: 22.51));
  podCastDetailList.add(MusicModel(title: "Episodes 6", subtitle: "10 Nov, 2012", number1: 41.22));

  return podCastDetailList;
}

List<MusicModel> getPodCastList() {
  List<MusicModel> podCastList = [];
  podCastList.add(MusicModel(title: lipsum.createWord(numWords: 1), img: mpImages_17, subtitle: lipsum.createWord(numWords: 1)));
  podCastList.add(MusicModel(title: lipsum.createWord(numWords: 1), img: mpImages_16, subtitle: lipsum.createWord(numWords: 1)));
  podCastList.add(MusicModel(title: lipsum.createWord(numWords: 1), img: mpImages_15, subtitle: lipsum.createWord(numWords: 1)));
  podCastList.add(MusicModel(title: lipsum.createWord(numWords: 1), img: mpImages_14, subtitle: lipsum.createWord(numWords: 1)));
  podCastList.add(MusicModel(title: lipsum.createWord(numWords: 1), img: mpImages_13, subtitle: lipsum.createWord(numWords: 1)));
  podCastList.add(MusicModel(title: lipsum.createWord(numWords: 1), img: mpImages_12, subtitle: lipsum.createWord(numWords: 1)));
  podCastList.add(MusicModel(title: lipsum.createWord(numWords: 1), img: mpImages_11, subtitle: lipsum.createWord(numWords: 1)));
  podCastList.add(MusicModel(title: lipsum.createWord(numWords: 1), img: mpImages_10, subtitle: lipsum.createWord(numWords: 1)));
  podCastList.add(MusicModel(title: lipsum.createWord(numWords: 1), img: mpImages_9, subtitle: lipsum.createWord(numWords: 1)));
  podCastList.add(MusicModel(title: lipsum.createWord(numWords: 1), img: mpImages_8, subtitle: lipsum.createWord(numWords: 1)));

  return podCastList;
}

List<MusicModel> getDisCoverGridList() {
  List<MusicModel> list = [];
  list.add(MusicModel(img: mpImages_17, title: "Dale Cranegie Books", number: 251, subtitle: "30 tracks"));
  list.add(MusicModel(img: mpImages_16, title: "Stephen R.Covey Books", number: 100, subtitle: "20 tracks"));
  list.add(MusicModel(img: mpImages_15, title: "Eckhart Tolle Books", number: 251, subtitle: "25 tracks"));
  list.add(MusicModel(img: mpImages_14, title: "Robert T.Kiyosaki Books", number: 150, subtitle: "30 tracks"));
  list.add(MusicModel(img: mpImages_13, title: "Napoleon Hills Books", number: 251, subtitle: "20 tracks"));
  list.add(MusicModel(img: mpImages_12, title: "Sherlock Holmes Books", number: 351, subtitle: "25 tracks"));
  // list.add(MusicModel(img: mpImages_11, title: "Road Trip", number: 251, subtitle: "42 tracks"));
  // list.add(MusicModel(img: mpImages_10, title: "Road Trip", number: 151, subtitle: "38 tracks"));
  // list.add(MusicModel(img: mpImages_9, title: "Road Trip", number: 251, subtitle: "30 tracks"));
  // list.add(MusicModel(img: mpImages_8, title: "Road Trip", number: 341, subtitle: "20 tracks"));

  return list;
}

List<MusicModel> getArtistsDetailAlbumList() {
  List<MusicModel> artistsDetailAlbumList = [];
  artistsDetailAlbumList.add(MusicModel(img: mpImages_11, title: lipsum.createWord(numWords: 1), number: 2017));
  artistsDetailAlbumList.add(MusicModel(img: mpImages_15, title: lipsum.createWord(numWords: 1), number: 2008));
  artistsDetailAlbumList.add(MusicModel(img: mpImages_10, title: lipsum.createWord(numWords: 1), number: 2010));
  artistsDetailAlbumList.add(MusicModel(img: mpImages_4, title: lipsum.createWord(numWords: 1), number: 2014));
  artistsDetailAlbumList.add(MusicModel(img: mpImages_8, title: lipsum.createWord(numWords: 1), number: 2018));
  artistsDetailAlbumList.add(MusicModel(img: mpImages_14, title: lipsum.createWord(numWords: 1), number: 2009));

  return artistsDetailAlbumList;
}

List<MusicModel> getProfileGridList() {
  List<MusicModel> list = [];
  list.add(MusicModel(img: mpImages_3, title: "Sound Of Water"));
  list.add(MusicModel(title: "Tôi Thấy Hoa Vàng ...", img: mpImages_3));
  list.add(MusicModel(title: "Tôi Thấy Hoa Vàng ...", img: mpImages_3));
  list.add(MusicModel(title: "Tôi Thấy Hoa Vàng ...", img: mpImages_3));
  list.add(MusicModel(title: "Tôi Thấy Hoa Vàng ...", img: mpImages_3));
  list.add(MusicModel(img: mpImages_13, title: "Road Trip"));
  list.add(MusicModel(img: mpImages_15, title: "Road Trip"));
  list.add(MusicModel(img: mpImages_17, title: "Road Trip"));
  return list;
}

List<MusicModel> getAlbumsList() {
  List<MusicModel> list = [];
  list.add(MusicModel(title: "Tôi Thấy Hoa Vàng Trên Cỏ Xanh", img: mpImages_3, subtitle: "Nguyễn Nhật Ánh"));
  list.add(MusicModel(title: "Tôi Thấy Hoa Vàng Trên Cỏ Xanh", img: mpImages_3, subtitle: "Nguyễn Nhật Ánh"));
  list.add(MusicModel(title: "Tôi Thấy Hoa Vàng Trên Cỏ Xanh", img: mpImages_3, subtitle: "Nguyễn Nhật Ánh"));
  list.add(MusicModel(title: "Tôi Thấy Hoa Vàng Trên Cỏ Xanh", img: mpImages_3, subtitle: "Nguyễn Nhật Ánh"));
  list.add(MusicModel(title: "Tôi Thấy Hoa Vàng Trên Cỏ Xanh", img: mpImages_3, subtitle: "Nguyễn Nhật Ánh"));
  list.add(MusicModel(title: "Tôi Thấy Hoa Vàng Trên Cỏ Xanh", img: mpImages_3, subtitle: "Nguyễn Nhật Ánh"));
  list.add(MusicModel(title: "Tôi Thấy Hoa Vàng Trên Cỏ Xanh", img: mpImages_3, subtitle: "Nguyễn Nhật Ánh"));

  // list.add(MusicModel(img: mpImages_10, title: "Sound Of Water", subtitle: "Denise Brewer"));
  // list.add(MusicModel(img: mpImages_13, title: "The For Carnation", subtitle: "Dylan Meringur"));
  // list.add(MusicModel(img: mpImages_7, title: "Road Trip", subtitle: "Denise Brewer"));
  // list.add(MusicModel(img: mpImages_2, title: "Sound Of Water", subtitle: "Dylan Meringur"));
  // list.add(MusicModel(img: mpImages_5, title: "The For Carnation", subtitle: "Richard Tea"));
  // list.add(MusicModel(img: mpImages_1, title: "Road Trip", subtitle: "25 tracks"));
  // list.add(MusicModel(img: mpImages_11, title: "Road Trip", subtitle: "The For Carnation"));
  // list.add(MusicModel(img: mpImages_17, title: "Road Trip", subtitle: "Sound Of Water"));
  return list;
}

List<MusicModel> getAlbumGridList() {
  List<MusicModel> list = [];
  list.add(MusicModel(img: mpImages_17, title: "Dale Cranegie Books", number: 251, subtitle: "30 tracks"));
  list.add(MusicModel(img: mpImages_17, title: "Dale Cranegie Books", number: 251, subtitle: "30 tracks"));
  list.add(MusicModel(img: mpImages_17, title: "Dale Cranegie Books", number: 251, subtitle: "30 tracks"));
  list.add(MusicModel(img: mpImages_17, title: "Dale Cranegie Books", number: 251, subtitle: "30 tracks"));
  list.add(MusicModel(img: mpImages_17, title: "Dale Cranegie Books", number: 251, subtitle: "30 tracks"));
  list.add(MusicModel(img: mpImages_17, title: "Dale Cranegie Books", number: 251, subtitle: "30 tracks"));

  // list.add(MusicModel(img: mpImages_2, title: "Road Trip", subtitle: "Since I Left You"));
  // list.add(MusicModel(img: mpImages_4, title: "Road Trip", subtitle: "Sea Change"));
  // list.add(MusicModel(img: mpImages_6, title: "Road Trip", subtitle: "Tune For The Road"));
  // list.add(MusicModel(img: mpImages_8, title: "Road Trip", subtitle: "I Miss YOu"));
  // list.add(MusicModel(img: mpImages_10, title: "Sound Of Water", subtitle: "Walk Of Time"));
  // list.add(MusicModel(img: mpImages_12, title: "The For Carnation", subtitle: "Come With Me"));
  // list.add(MusicModel(img: mpImages_14, title: "Road Trip", subtitle: "Sea Change"));
  // list.add(MusicModel(img: mpImages_16, title: "Sound Of Water", subtitle: "Tune For The Road"));
  // list.add(MusicModel(img: mpImages_7, title: "The For Carnation", subtitle: "Sound Of Water"));
  // list.add(MusicModel(img: mpImages_9, title: "Road Trip", subtitle: "Since I Left You"));

  return list;
}

List<MusicModel> getAlbumDetailList() {
  List<MusicModel> list = [];
  list.add(MusicModel(title: "Tune For The Road", subtitle: "2:45"));
  list.add(MusicModel(title: "Giving My Bed", subtitle: "3:45"));
  list.add(MusicModel(title: "Golden Dreams", subtitle: "7:05"));
  list.add(MusicModel(title: "Sound Of Water", subtitle: "5:12"));
  list.add(MusicModel(title: "Tune For The Road", subtitle: "4:45"));
  list.add(MusicModel(title: "The For Carnation", subtitle: "8:45"));
  list.add(MusicModel(title: "Giving My Bed", subtitle: "4:45"));
  list.add(MusicModel(title: "Walk Of Time", subtitle: "3:50"));
  list.add(MusicModel(title: "Second Of You", subtitle: "2:45"));
  list.add(MusicModel(title: "Rock Radio", subtitle: "1:15"));
  list.add(MusicModel(title: "Golden Dreams", subtitle: "3:45"));
  list.add(MusicModel(title: "Tune For The Road", subtitle: "5:45"));
  return list;
}

List<MusicModel> getSongList() {
  List<MusicModel> list = [];

  list.add(MusicModel(title: "New Releases", color: Colors.pinkAccent));
  list.add(MusicModel(title: "Podcasts", color: Colors.lightGreen));
  list.add(MusicModel(title: "Self Help", color: Colors.pink));
  list.add(MusicModel(title: "Crimminal", color: Colors.blueAccent));
  list.add(MusicModel(title: "Novel", color: Colors.grey));
  list.add(MusicModel(title: "Sci-fi", color: Colors.green));
  list.add(MusicModel(title: "Fairy Tale", color: Colors.blue));
  list.add(MusicModel(title: "Manga", color: Colors.pinkAccent));
  list.add(MusicModel(title: "Marvel", color: Colors.lightGreen));
  list.add(MusicModel(title: "Cooking", color: Colors.pink));
  // list.add(MusicModel(title: "Hop", color: Colors.blueAccent));
  // list.add(MusicModel(title: "Pop", color: Colors.grey));
  // list.add(MusicModel(title: "Jazz", color: Colors.green));
  // list.add(MusicModel(title: "Metal", color: Colors.blue));

  return list;
}

List<MusicModel> getSongTypeList() {
  List<MusicModel> list = [];
  list.add(MusicModel(img: "https://icrrd.com/media/01-11-2020-2127437-habits-of-highly-effective-people.jpg", title: "7 habits", subtitle: ""));
  list.add(MusicModel(img: "https://icrrd.com/media/01-11-2020-2127437-habits-of-highly-effective-people.jpg", title: "7 habits", subtitle: ""));
  list.add(MusicModel(img: "https://icrrd.com/media/01-11-2020-2127437-habits-of-highly-effective-people.jpg", title: "7 habits", subtitle: ""));
  list.add(MusicModel(img: "https://icrrd.com/media/01-11-2020-2127437-habits-of-highly-effective-people.jpg", title: "7 habits", subtitle: ""));
  list.add(MusicModel(img: "https://icrrd.com/media/01-11-2020-2127437-habits-of-highly-effective-people.jpg", title: "7 habits", subtitle: ""));
  // list.add(MusicModel(img: mpImages_17, title: "Road Trip", subtitle: "Sea Change"));
  // list.add(MusicModel(img: mpImages_16, title: "Sound Of Water", subtitle: "Tune For The Road"));
  // list.add(MusicModel(img: mpImages_15, title: "The For Carnation", subtitle: "Sound Of Water"));
  // list.add(MusicModel(img: mpImages_12, title: "Road Trip", subtitle: "Since I Left You"));

  return list;
}

List<MusicModel> getProfileList() {
  List<MusicModel> list = [];
  list.add(MusicModel(title: "Profile", isShow: true));
  list.add(MusicModel(title: "Edit Profile", isShow: true, icon: (Icons.keyboard_arrow_right_outlined)));
  list.add(MusicModel(title: "Your Email", isShow: true, icon: (Icons.keyboard_arrow_right_outlined)));
  list.add(MusicModel(title: "Reset Password", isShow: true, icon: (Icons.keyboard_arrow_right_outlined)));
  list.add(MusicModel(title: "Notification"));
  list.add(MusicModel(title: "Location", isShow: true, icon: (Icons.keyboard_arrow_right_outlined)));
  list.add(MusicModel(title: "Support", isShow: true, icon: (Icons.keyboard_arrow_right_outlined)));
  list.add(MusicModel(title: "Tearms and Conditions", isShow: true, icon: (Icons.keyboard_arrow_right_outlined)));
  list.add(MusicModel(title: "Location", isShow: true));

  return list;
}

List<MusicModel> getPlayDetailList() {
  List<MusicModel> playDetailList = [];
  playDetailList.add(MusicModel(title: lipsum.createWord(numWords: 1), img: mpImages_2, subtitle: lipsum.createWord(numWords: 1), number: 1));
  playDetailList.add(MusicModel(title: lipsum.createWord(numWords: 1), img: mpImages_10, subtitle: lipsum.createWord(numWords: 1), number: 2));
  playDetailList.add(MusicModel(title: lipsum.createWord(numWords: 1), img: mpImages_8, subtitle: lipsum.createWord(numWords: 1), number: 3));
  playDetailList.add(MusicModel(title: lipsum.createWord(numWords: 1), img: mpImages_6, subtitle: lipsum.createWord(numWords: 1), number: 4));
  playDetailList.add(MusicModel(title: lipsum.createWord(numWords: 1), img: mpImages_1, subtitle: lipsum.createWord(numWords: 1), number: 5));
  playDetailList.add(MusicModel(title: lipsum.createWord(numWords: 1), img: mpImages_16, subtitle: lipsum.createWord(numWords: 1), number: 6));
  playDetailList.add(MusicModel(title: lipsum.createWord(numWords: 1), img: mpImages_12, subtitle: lipsum.createWord(numWords: 1), number: 7));
  playDetailList.add(MusicModel(title: lipsum.createWord(numWords: 1), img: mpImages_14, subtitle: lipsum.createWord(numWords: 1), number: 8));
  playDetailList.add(MusicModel(title: lipsum.createWord(numWords: 1), img: mpImages_7, subtitle: lipsum.createWord(numWords: 1), number: 9));
  playDetailList.add(MusicModel(title: lipsum.createWord(numWords: 1), img: mpImages_9, subtitle: lipsum.createWord(numWords: 1), number: 10));

  return playDetailList;
}

List<MusicModel> getSelectedSongTypeList() {
  List<MusicModel> selectedSongTypeList = [];
  selectedSongTypeList.add(MusicModel(title: "Harry Potter và Hòn đá Phù thủy", img: "https://fandom.vn/wp-content/uploads/2019/06/harry-potter-va-hon-da-phu-thuy-1.jpg"));
  selectedSongTypeList.add(MusicModel(title: "Harry Potter và Phòng chứa Bí mật", img: "https://banyeusach.com/wp-content/uploads/2020/10/harry-potter-2-harry-potter-and-the-chamber-of-secrets.jpg"));
  selectedSongTypeList.add(MusicModel(title: "Harry Potter và tên tù nhân ngục Azkaban", img: "https://i.pinimg.com/originals/ba/3b/75/ba3b758b9f4e1d934d6448860fff9ea3.jpg"));
  selectedSongTypeList.add(MusicModel(title: "Harry Potter và Chiếc cốc lửa", img: "https://vcdn1-ione.vnecdn.net/2020/12/14/m1-1607920495-3418-1607920514.jpg?w=900&h=540&q=100&dpr=1&fit=crop&s=MWHHc9Sq84Nga7ZMj4kQrQ"));
  selectedSongTypeList.add(MusicModel(title: "Harry Potter và Hội Phượng Hoàng", img: "https://fandom.vn/wp-content/uploads/2019/06/harry-potter-and-the-order-of-the-phoenix-1.jpeg"));
  selectedSongTypeList.add(MusicModel(title: "Harry Potter và Bảo Bối Tử Thần", img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFDUpVbeI9ANpdkZ0rs79chJx6mO-QV5cYLh25iEOHEWEgn4K2l8TbxEASLPPEsJXAFJA&usqp=CAU"));
  selectedSongTypeList.add(MusicModel(title: "Harry Potter và Bảo Bối Tử Thần - Phần 2", img: "https://coolwallpapers.me/picsup/5709264-harry-potter-and-deathly-hallows-part-1-wallpapers.jpg"));
  // selectedSongTypeList.add(MusicModel(title: lipsum.createWord(numWords: 2), img: mpImages_5));
  // selectedSongTypeList.add(MusicModel(title: lipsum.createWord(numWords: 2), img: mpImages_14));
  // selectedSongTypeList.add(MusicModel(title: lipsum.createWord(numWords: 2), img: mpImages_16));

  return selectedSongTypeList;
}

List<MusicModel> getDateList() {
  List<MusicModel> list = [];
  list.add(MusicModel(title: "10/11"));
  list.add(MusicModel(title: "11/11"));
  list.add(MusicModel(title: "12/11"));
  list.add(MusicModel(title: "13/11"));
  list.add(MusicModel(title: "14/11"));
  list.add(MusicModel(title: "15/11"));
  list.add(MusicModel(title: "16/11"));
  list.add(MusicModel(title: "17/11"));
  list.add(MusicModel(title: "18/11"));
  list.add(MusicModel(title: "19/11"));
  list.add(MusicModel(title: "20/11"));
  list.add(MusicModel(title: "21/11"));
  list.add(MusicModel(title: "22/11"));
  list.add(MusicModel(title: "23/11"));
  list.add(MusicModel(title: "24/11"));
  list.add(MusicModel(title: "25/11"));
  return list;
}

List<MusicModel> getEventsList() {
  List<MusicModel> list = [];
  list.add(MusicModel(img: mpImages_10, title: "Ra mắt Harry Potter"));
  list.add(MusicModel(img: mpImages_15, title: "Ra mắt Mắc Biếc"));
  list.add(MusicModel(img: mpImages_17, title: "Công chiếu Harry Potter"));
  list.add(MusicModel(img: mpImages_5, title: "Công chiếu Mắt Biếc"));
  // list.add(MusicModel(img: mpImages_1, title: "The For Carnation"));
  // list.add(MusicModel(img: mpImages_9, title: "Road Trip"));
  // list.add(MusicModel(img: mpImages_6, title: "Road Trip"));
  // list.add(MusicModel(img: mpImages_3, title: "Road Trip"));
  return list;
}

List<MusicModel> getPlayList() {
  List<MusicModel> list = [];
  list.add(MusicModel(img: mPImage_1, title: "Road Trip", subtitle: "Since I Left You"));
  list.add(MusicModel(img: mPImage_2, title: "Road Trip", subtitle: "Sea Change"));
  list.add(MusicModel(img: mPImage_3, title: "Road Trip", subtitle: "Tune For The Road"));
  list.add(MusicModel(img: mPImage_4, title: "Road Trip", subtitle: "I Miss YOu"));
  list.add(MusicModel(img: mPImage_5, title: "Sound Of Water", subtitle: "Walk Of Time"));
  list.add(MusicModel(img: mPImage_6, title: "The For Carnation", subtitle: "Come With Me"));
  list.add(MusicModel(img: mPImage_1, title: "Road Trip", subtitle: "Since I Left You"));
  list.add(MusicModel(img: mPImage_2, title: "Road Trip", subtitle: "Sea Change"));
  list.add(MusicModel(img: mPImage_3, title: "Road Trip", subtitle: "Tune For The Road"));
  list.add(MusicModel(img: mPImage_4, title: "Road Trip", subtitle: "I Miss YOu"));
  list.add(MusicModel(img: mPImage_5, title: "Sound Of Water", subtitle: "Walk Of Time"));
  list.add(MusicModel(img: mPImage_6, title: "The For Carnation", subtitle: "Come With Me"));

  return list;
}
