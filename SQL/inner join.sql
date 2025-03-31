use aluno;

select * from alunos;
select * from professor;
select * from materias_curso;

select a.numero_aluno, a.nome_aluno, c.nome_curso, p.nome_professor, p.materias_professor
	from alunos as a, curso as c, professor as p
    where a.numero_curso = c.numero_curso and
    p.numero_curso = c.numero_curso;