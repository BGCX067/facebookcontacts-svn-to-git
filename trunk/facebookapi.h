#ifndef FACEBOOKAPI_H
#define FACEBOOKAPI_H

#include <QObject>
#include "facebookprofile.h"

class FacebookAPI : public QObject
{
    Q_OBJECT
public:
    explicit FacebookAPI(QObject *parent = 0);

signals:

public slots:

private:
	QList<FacebookProfile> m_Profiles;
};

#endif // FACEBOOKAPI_H
