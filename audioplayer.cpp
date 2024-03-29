#include "audioplayer.h"
#include <QDebug>

AudioPlayer::AudioPlayer(QObject *parent): QAbstractListModel(parent)
{
    QDir mDirect(QDir::homePath()+"/Музыка"); //указ путь к папке
    mData = mDirect.entryInfoList(QDir::Files | QDir::NoDotAndDotDot);
    //qDebug()<< mDirect.entryList();

}

int AudioPlayer::rowCount(const QModelIndex &parent) const
{   Q_UNUSED(parent)
    qDebug()<< mData.count() ;
    return mData.count();
}

QVariant AudioPlayer::data(const QModelIndex &index, int role) const
{
    if(index.row() < 0 || index.row() > mData.length() ){
        return QVariant();
    }
    switch (role) {
    case NameFold:
        return mData[index.row()].fileName();
    case PathFold:
        return mData[index.row()].filePath();
    }
    return QVariant();}

QHash<int, QByteArray> AudioPlayer::roleNames() const
{
    QHash<int, QByteArray> roles = QAbstractListModel::roleNames();
    roles[NameFold] = "nameFold";
    roles[PathFold] = "pathFold";
    return roles;
}

void AudioPlayer::startPlay(const QString &path)
{

    if(player.state() == QMediaPlayer::State::PlayingState){
        player.stop();
    }

    player.setMedia(QUrl::fromLocalFile(path));
    player.setVolume(50);
    player.play();
    //time->start(1000);
}

void AudioPlayer::stopPlay(){
    if(player.state() == QMediaPlayer::State::PlayingState){
        player.stop();
    }
}
