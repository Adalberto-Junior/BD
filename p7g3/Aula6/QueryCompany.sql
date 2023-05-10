SELECT Pname, Pnumber, Fname, Minit, Lname,Ssn FROM (project as p inner join works_on as w
on w.Pno = p.Pnumber) inner join  Employee as E on w.Essn = E.Ssn

SELECT E.Fname,E.Minit,E.Lname FROM Employee as E inner join Employee as s on 
E.Super_ssn = s.Ssn where s.Fname = 'Carlos' and s.Minit = 'D' and s.Lname = 'Gomes'

