#include "audioplayer.h"
#include <QDebug>

AudioPlayer::AudioPlayer(QObject *parent): QAbstractListModel(parent)
{
    QDir mDirect(QDir::homePath()+"/Музыка"); //указ путь к папке
    mData = mDirect.entryInfoList(QDir::AllDirs | QDir::NoDotAndDotDot);
    //qDebug()<< mDirect.entryList();

}

int AudioPlayer::rowCount(const QModelIndex &parent) const
{   Q_UNUSED(parent)
    qDebug()<< mData.length() ;
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

void AudioPlayer::startPlay(QString &path)
{
    player.setMedia(QUrl::fromLocalFile(path));
    player.setVolume(50);
    player.play();
    //time->start(1000);
}

