import sqlite3
import csv
from pathlib import Path
import pandas as pd

conn = sqlite3.connect('my_data.db')
c = conn.cursor()


# Doctors 
c.execute('''CREATE TABLE IF NOT EXISTS doctors(
  "D_ID" TEXT PRIMARY KEY,
  "D_NAME" TEXT,
  "D_GENDER" TEXT,
  "D_AGE" TEXT,
  "D_SPECIALIZATION" TEXT,
  "D_YEARS_OF_EXPERIENCE" TEXT,
  "D_CONTACT" TEXT,
  "D_STREET" TEXT,
  "D_CITY" TEXT
);''')

doctors = pd.read_csv('doctors.csv')
doctors.to_sql('doctors', conn, if_exists='append', index = False)


# instruments 
c.execute(''' CREATE TABLE IF NOT EXISTS instruments (
        I_ID INTEGER PRIMARY KEY, 
        I_NAME TEXT, 
        I_MANUFACTURER TEXT
    );''')

instruments = pd.read_csv('instruments.csv')
instruments.to_sql('instruments', conn, if_exists='append', index = False)


# n_assists 
c.execute(''' CREATE TABLE IF NOT EXISTS n_assists (
        N_ID INTEGER, 
        D_ID INTEGER,
        PRIMARY KEY(N_ID,D_ID)
    );''')

n_assists = pd.read_csv('n_assists.csv')
n_assists.to_sql('n_assists', conn, if_exists='append', index = False)

# nurses 
c.execute(''' CREATE TABLE IF NOT EXISTS nurses (
       N_ID INTEGER PRIMARY KEY, 
       N_NAME TEXT, 
       N_SPECIALIZATION TEXT, 
       N_SHIFT INTEGER CHECK (N_SHIFT IN (1, 2)), 
       N_STREET TEXT, 
       N_CITY TEXT    
    );''')

nurses = pd.read_csv('nurses.csv')
nurses.to_sql('nurses', conn, if_exists='append', index = False)

# p_assignment 
c.execute(''' CREATE TABLE IF NOT EXISTS p_assignment (
        P_ID INTEGER, 
        D_ID INTEGER,
        PRIMARY KEY(P_ID,D_ID)
    );''')

p_assignment = pd.read_csv('p_assignment.csv')
p_assignment.to_sql('p_assignment', conn, if_exists='append', index = False)

# patients 
c.execute(''' CREATE TABLE IF NOT EXISTS patients (
        P_ID INTEGER PRIMARY KEY, 
        P_NAME TEXT, 
        P_GENDER TEXT, 
        P_AGE INTEGER, 
        P_DISEASE TEXT, 
        P_CONTACT TEXT,
        P_STREET TEXT, 
        P_CITY TEXT);''')

patients = pd.read_csv('patients.csv')
patients.to_sql('patients', conn, if_exists='append', index = False)

# tests 
c.execute(''' CREATE TABLE IF NOT EXISTS tests (
        T_ID INTEGER PRIMARY KEY, 
        T_NAME TEXT, 
        P_ID INTEGER, 
        D_ID INTEGER, 
        I_ID INTEGER, 
        T_DATE TEXT, 
        T_RESULT TEXT
    );''')

tests = pd.read_csv('tests.csv')
tests.to_sql('tests', conn, if_exists='append', index = False)


# Queries
#1
q1 =c.execute('''SELECT *
   FROM doctors,patients,p_assignment
   WHERE doctors.D_ID = p_assignment.D_ID AND patients.P_ID = p_assignment.P_ID AND patients.P_NAME = 'RICHARD MILLER'; ''').fetchall()
print('q1\n')
for i in q1:
        print(i)
print('\n')

#2
q2=c.execute('''SELECT T_RESULT
    FROM tests
   WHERE P_ID in (SELECT substr(P_ID,-4) FROM patients WHERE P_DISEASE LIKE '%Cancer%'); ''')

print('q2\n')
for i in q2:
        print(i)
print('\n')


#3
q3=c.execute('''SELECT I_MANUFACTURER
     FROM instruments
     WHERE I_MANUFACTURER Like 'S%'; ''')
print('q3\n')
for i in q3:
        print(i)
print('\n')
#4
q4=c.execute('''SELECT * 
    FROM doctors
    WHERE D_YEARS_OF_EXPERIENCE = (SELECT MAX (D_YEARS_OF_EXPERIENCE) FROM doctors); ''')
print('q4\n')
for i in q4:
        print(i)
print('\n')
#5
q5=c.execute('''SELECT p.P_NAME

   FROM doctors d, patients p, p_assignment PA
    WHERE d.D_ID = PA.D_ID AND p.P_ID = PA.P_ID AND d.D_NAME = "JAMES SMITH" AND d.D_STREET = p.P_STREET AND d.D_CITY = P_CITY; ''')
print('q5\n')
for i in q5:
        print(i)
print('\n')
#6
q6=c.execute('''SELECT nurses.N_NAME,COUNT(n_assists.D_ID)
    FROM nurses,n_assists
    WHERE nurses.N_ID=n_assists.N_ID
    GROUP BY nurses.N_ID
    HAVING COUNT(n_assists.D_ID) >= 2; ''')
print('q6\n')
for i in q6:
        print(i)
print('\n')
#7
q7=c.execute('''SELECT doctors.D_NAME,COUNT(n_assists.N_ID)
    FROM doctors,n_assists
    WHERE n_assists.D_ID = doctors.D_ID
    GROUP BY doctors.D_ID
    ORDER BY COUNT(n_assists.N_ID) DESC; ''')
print('q7\n')
for i in q7:
        print(i)
print('\n')

#8
q8=c.execute('''SELECT nurses.N_NAME
    FROM nurses
    WHERE nurses.N_ID NOT IN ( SELECT N_ID FROM n_assists); ''')
print('q8\n')
for i in q8:
        print(i)
print('\n')
#9 

c.execute('''UPDATE DOCTORS
    SET D_YEARS_OF_EXPERIENCE = D_YEARS_OF_EXPERIENCE + 5
    WHERE D_GENDER = 'f'; ''')

q9=c.execute(''' SELECT *
    FROM doctors
    WHERE D_GENDER = 'f'; ''')
print('q9\n')
for i in q9:
        print(i)
print('\n')
#10

c.execute('''DELETE FROM TESTS
    WHERE T_RESULT = 'Negative' ''')

q10=c.execute('''SELECT T_RESULT
   FROM tests''')

print('q10\n')
for i in q10:
        print(i)
print('\n')


with open('hospitaldb.sql', 'w') as f:
    for line in conn.iterdump():
        f.write('%s\n' % line)

conn.commit()
c.close()
