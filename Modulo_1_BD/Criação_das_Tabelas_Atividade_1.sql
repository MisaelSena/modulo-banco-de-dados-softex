/* Modelo_L�gico_Atividade_1: */

CREATE TABLE Livro (
    ID_Livro INTEGER PRIMARY KEY,
    Titulo VARCHAR,
    Ano DATE
);

CREATE TABLE Autor (
    ID_Autor INTEGER PRIMARY KEY,
    Nome VARCHAR,
    Nacionalidade VARCHAR
);

CREATE TABLE Usuario (
    ID_Usuario INTEGER PRIMARY KEY,
    Nome VARCHAR,
    Email VARCHAR
);

CREATE TABLE Emprestimo (
    ID_Emprestimo INTEGER PRIMARY KEY,
    DataEmprestimo DATE,
    DataDevolucao DATE
);

CREATE TABLE LivroAutor (
    fk_Livro_ID_Livro INTEGER,
    fk_Autor_ID_Autor INTEGER
);

CREATE TABLE LivroEmprestimo (
    fk_Emprestimo_ID_Emprestimo INTEGER,
    fk_Livro_ID_Livro INTEGER
);

CREATE TABLE UsuarioEmprestimo (
    fk_Emprestimo_ID_Emprestimo INTEGER,
    fk_Usuario_ID_Usuario INTEGER
);
 
ALTER TABLE LivroAutor ADD CONSTRAINT FK_LivroAutor_1
    FOREIGN KEY (fk_Livro_ID_Livro)
    REFERENCES Livro (ID_Livro)
    ON DELETE RESTRICT;
 
ALTER TABLE LivroAutor ADD CONSTRAINT FK_LivroAutor_2
    FOREIGN KEY (fk_Autor_ID_Autor)
    REFERENCES Autor (ID_Autor)
    ON DELETE RESTRICT;
 
ALTER TABLE LivroEmprestimo ADD CONSTRAINT FK_LivroEmprestimo_1
    FOREIGN KEY (fk_Emprestimo_ID_Emprestimo)
    REFERENCES Emprestimo (ID_Emprestimo)
    ON DELETE RESTRICT;
 
ALTER TABLE LivroEmprestimo ADD CONSTRAINT FK_LivroEmprestimo_2
    FOREIGN KEY (fk_Livro_ID_Livro)
    REFERENCES Livro (ID_Livro)
    ON DELETE RESTRICT;
 
ALTER TABLE UsuarioEmprestimo ADD CONSTRAINT FK_UsuarioEmprestimo_1
    FOREIGN KEY (fk_Emprestimo_ID_Emprestimo)
    REFERENCES Emprestimo (ID_Emprestimo)
    ON DELETE RESTRICT;
 
ALTER TABLE UsuarioEmprestimo ADD CONSTRAINT FK_UsuarioEmprestimo_2
    FOREIGN KEY (fk_Usuario_ID_Usuario)
    REFERENCES Usuario (ID_Usuario)
    ON DELETE RESTRICT;