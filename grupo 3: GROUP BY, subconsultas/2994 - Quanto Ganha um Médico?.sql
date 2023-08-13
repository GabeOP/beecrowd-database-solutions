/* 
ROUND para colocar N casas decimais do resultado, no caso 1.
Graças ao GROUP BY, a função SUM vai somar o total do cálculo para cada doctor.
*/

SELECT doctors.name, ROUND(SUM((attendances.hours * 150) + (work_shifts.bonus * 0.01 * 150 * attendances.hours)),1) AS salary
FROM doctors
INNER JOIN attendances ON doctors.id = attendances.id_doctor
INNER JOIN work_shifts ON attendances.id_work_shift = work_shifts.id
GROUP BY doctors.name

/* Você trabalha no setor de TI de um Hospital e precisa calcular a receita de pagamento de cada um dos médicos. 
Cada médico ganha 150$ por hora mais uma porcentagem dependendo do turno de trabalho, por exemplo, o médico Wellington trabalhou 1 hora no turno do dia, e 2 horas no turno da noite, 
logo seu salário semanal será: ( ( 1 * 150 ) + 1% ) + ( ( 2 * 150 ) + 15% ) = 496.5. Além disso, você pode usar a função round(value,1) para exibir os salários com 1 casa decimal 
e ordene o resultado do maior para o menor salário.*/