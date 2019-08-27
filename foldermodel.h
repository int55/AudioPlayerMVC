#ifndef FOLDERMODEL_H
#define FOLDERMODEL_H
#include <QAbstractListModel>
#include <QObject>
#include <QFileInfo>
#include <QDir>
#include <QList>
#include <QString>


class FolderModel: public QAbstractListModel
{
    Q_OBJECT
public:
    FolderModel(QObject * parent = 0);

    enum Roles {
        NameFold,
        PathFold
    };

    Q_INVOKABLE void changeStack(QString curPath);

    int rowCount(const QModelIndex &parent = QModelIndex()) const;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const;
    QHash<int, QByteArray> roleNames() const;

private:
    QList<QFileInfo> dataModel;
    QDir directory;

};

#endif // FOLDERMODEL_H
