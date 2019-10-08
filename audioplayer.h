#ifndef AUDIOPLAYER_H
#define AUDIOPLAYER_H
#include <QAbstractListModel>
#include <QObject>
#include <QDir>
#include <QFileInfo>
#include <QList>
#include <QMediaPlayer>

class AudioPlayer: public QAbstractListModel
{
    Q_OBJECT
public:
    AudioPlayer(QObject *parent = 0);

    enum Roles {
        NameFold,
        PathFold
    };

    int rowCount(const QModelIndex &parent = QModelIndex()) const;
    QVariant data(const QModelIndex &index, int role= Qt::DisplayRole ) const;
    QHash<int, QByteArray> roleNames() const;

    Q_INVOKABLE void startPlay(const QString &path);
    Q_INVOKABLE void stopPlay();


private:
    QList<QFileInfo> mData;
    QDir mDirect;
    QMediaPlayer player;

};

#endif // AUDIOPLAYER_H
