import datetime

tday = datetime.date.today()


# weekday() - Monday is 0 and Sunday is 6
# print(tday)

# isoweekday() - Monday is 1 and Sunday is 7
# print(tday)


# datetime.timedelta(days=0, seconds=0, microseconds=0, milliseconds=0, minutes=0, hours=0, weeks=0)

tdelta = datetime.timedelta(hours=12)

# print(tday + tdelta)

# date2 = date1 + timedelta
# timedelta = date1 + date2

bday = datetime.date(2016, 9, 24)

till_bday = bday - tday

# print(till_bday.days)
