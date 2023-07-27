class Album {
  int id;
  String AlbumName;
  String ArtistName;
  String Duration;

  Album(
      {required this.id,
      required this.AlbumName,
      required this.ArtistName,
      required this.Duration});
}

class category {
  String Albumname;
  List StoreSong = [];

  category({required this.Albumname, required this.StoreSong});
}

void main() {
  List AlbumStore = []; 

  AlbumStore.add(Album(
      id: 1,
      AlbumName: "Kesariya",
      ArtistName: "Arijit singh",
      Duration: "3.34"));

  AlbumStore.add(Album(
      id: 2, AlbumName: "Mitrazz", ArtistName: "Brothers", Duration: "4.45"));

  List CategoryList = [];

  CategoryList.add(category(Albumname: "AlbumSong", StoreSong: AlbumStore));
}
