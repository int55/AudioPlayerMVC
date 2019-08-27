#include "foldermodel.h"
#include <QDebug>

FolderModel::FolderModel(QObject *parent): QAbstractListModel (parent)
{
    directory.setPath(QDir::homePath());
    dataModel = directory.entryInfoList(QDir::AllDirs | QDir::NoDotAndDotDot);
    //qDebug()<< directory.entryList();
}

void FolderModel::changeStack(QString curPath)
{
    dataModel.clear();//очистить массив
    directory.setPath(curPath);
    dataModel = directory.entryInfoList(QDir::AllEntries | QDir::NoDotAndDotDot);
    beginResetModel();
    endResetModel();
}

int FolderModel::rowCount(const QModelIndex &parent) const
{   Q_UNUSED(parent)
           // qDebug()<< dataModel.length() ;
    return dataModel.length();
}

QVariant FolderModel::data(const QModelIndex &index, int role) const
{
    if(index.row() < 0 || index.row() > dataModel.length() ){
        return QVariant();
    }
    switch (role) {
    case NameFold:
        return dataModel[index.row()].fileName();
    case PathFold:
        return dataModel[index.row()].filePath();
    }
    return QVariant();
}

QHash<int, QByteArray> FolderModel::roleNames() const
{
    QHash<int, QByteArray> roles = QAbstractListModel::roleNames();
    roles[NameFold] = "nameFold";
    roles[PathFold] = "pathFold";
    return roles;
}
