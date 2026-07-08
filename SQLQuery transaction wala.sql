select * from information

--commit
begin transaction 

insert into information values (11,'ahmad','ALI','cs');
commit

Select * from information

--COMMIT--
BEGIN TRANSACTION;
INSERT INTO information
VALUES (17, 'Chacha', 'Khan','dfcs')
COMMIT;

BEGIN TRANSACTION;
UPDATE information
SET degree= 'se'
WHERE regno= 9;
COMMIT;

BEGIN TRANSACTION;
DELETE FROM information
WHERE regno= 9
COMMIT;


--ROLL BACK---

BEGIN TRANSACTION;
INSERT INTO information
VALUES (18, 'Ayan', 'Ahmed','it')
ROLLBACK;

BEGIN TRANSACTION;
UPDATE information
SET degree = 'me'
WHERE regno = 2
ROLLBACK;

BEGIN TRANSACTION;
DELETE FROM information
WHERE regno=5;
ROLLBACK;


--SAVE TRANSACTION--

BEGIN TRANSACTION;
INSERT INTO information
VALUES (19, 'Alo', 'Bukhar','criminology')
SAVE TRANSACTION insertp;

BEGIN TRANSACTION;
UPDATE information
SET degree='it'
WHERE regno=4;
SAVE TRANSACTION updatep;

BEGIN TRANSACTION;
DELETE FROM information
WHERE regno =1;
SAVE TRANSACTION deletep;



-- PROCEDURE --

CREATE PROCEDURE manageEmp
    @id int,
    @name1 VARCHAR(50),
    @Fname varchar(50),
    @degree varchar(50)
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        SAVE TRANSACTION savePoint1;

        -- INSERT
        INSERT INTO information(regno,name,fathername,degree)
        VALUES (@id,@name1,@fname,@degree)

        SAVE TRANSACTION insertPoint;

        -- UPDATE
        UPDATE information
        SET degree = 'se'
        WHERE regno = @id;

        SAVE TRANSACTION updatePoint;

        -- DELETE
        DELETE FROM information
        WHERE regno = @id;

        SAVE TRANSACTION deletePoint;

        -- COMMIT
        COMMIT TRANSACTION;
        PRINT 'Transaction Successful';

    END TRY

    BEGIN CATCH
        PRINT 'Error Occurred';

        ROLLBACK TRANSACTION;
       

        PRINT ERROR_MESSAGE();
    END CATCH
END;

exec manageEmp
	@id = 17,
	@name1 = 'adeel',
	@Fname = 'haroon',
	@degree = 'dfcs';