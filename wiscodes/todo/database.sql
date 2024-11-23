IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'todo_list')
BEGIN
    CREATE DATABASE todo_list;
END;

USE todo_list;

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tasks]') AND type in (N'U'))
BEGIN
    CREATE TABLE tasks (
        id INT IDENTITY(1,1) PRIMARY KEY, 
        title NVARCHAR(255) NOT NULL, 
        description NVARCHAR(MAX), 
        status NVARCHAR(10) DEFAULT 'pending', 
        created_at DATETIME DEFAULT GETDATE()
    );
END;