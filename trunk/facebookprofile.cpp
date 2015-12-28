#include "facebookprofile.h"

FacebookProfile::FacebookProfile(QObject *parent) :
    QObject(parent)
{
}

void FacebookProfile::loadProfile(QString fbId) {

}

QString FacebookProfile::FirstName() const {
	return m_FirstName;
}
QString FacebookProfile::LastName() const {
	return m_LastName;
}
QString FacebookProfile::FullName() const {
	return m_FullName;
}
QList<QString> FacebookProfile::Email() const {
	return m_Email;
}
int FacebookProfile::BirthDay() const {
	return m_BirthDay;
}
int FacebookProfile::BirthMonth() const {
	return m_BirthMonth;
}
int FacebookProfile::BirthYear() const {
	return m_BirthYear;
}

void FacebookProfile::setAccessToken(QString Token) {

}
