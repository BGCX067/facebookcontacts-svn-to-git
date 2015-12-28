#ifndef FACEBOOKPROFILE_H
#define FACEBOOKPROFILE_H

#include <QObject>

class FacebookProfile : public QObject
{
	Q_OBJECT
	Q_PROPERTY(QString FirstName READ FirstName)
	Q_PROPERTY(QString LastName READ LastName)
	Q_PROPERTY(QString FullName READ FullName)
	Q_PROPERTY(QList<QString> Email READ Email)
	Q_PROPERTY(int BirthDay READ BirthDay)
	Q_PROPERTY(int BirthMonth READ BirthMonth)
	Q_PROPERTY(int BirthYear READ BirthYear)
public:
    explicit FacebookProfile(QObject *parent = 0);
	QString FirstName() const;
	QString LastName() const;
	QString FullName() const;
	QList<QString> Email() const;
	int BirthDay() const;
	int BirthMonth() const;
	int BirthYear() const;
	void loadProfile(QString fbId);
	void setAccessToken(QString Token);
signals:

private:
	QString m_FirstName;
	QString m_LastName;
	QString m_FullName;
	QList<QString> m_Email;
	int m_BirthDay;
	int m_BirthMonth;
	int m_BirthYear;

	QString m_AccessToken;
public slots:

};

#endif // FACEBOOKPROFILE_H
