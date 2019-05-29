package takuma.idei.ideiapp;

import takuma.idei.ideiapp.IMusicServiceCallback;


interface MusicPlayerAIDL {
    //プレーヤー関連
    void setSelectSong(String path);
    void setAlbum(in List<String> makedAlbum);
    //再生関連
    String playOrPauseSong();
    void stopSong();
    void setRepert();

    //戻るor次
    void skipNext();
    void skipBack();
    List<String> getNowSongData();

    //シーク関連
    void setSeek(int progress);
    int getTotalTime();




    void registerCallback(IMusicServiceCallback callback);
    void unregisterCallback(IMusicServiceCallback callback);


}