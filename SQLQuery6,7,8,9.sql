6 ����
USE [LB_1]
GO

CREATE VIEW ����_2
AS SELECT DISTINCT ���_����, ����, ������ FROM ����

USE [LB_1]
GO

SELECT * FROM ����
WHERE г�_�������>2004

USE [LB_1]
GO

SELECT ����2.���_����, ����2.����, ����2.������,
�볺��.���, �볺��.����������_����� FROM ����2, �볺��
WHERE ����2.���_���� = �볺��.���_�볺���

SELECT ����2.���_����, ����2.����, ����2.������,
������_��������.����_����������, ������_��������.����_������� FROM ����2, ������_��������
WHERE ����2.���_���� = ������_��������.���_��������_�������� AND ������_��������.����_���������� > GetDate()

7 ����

SELECT ������ FROM ���� WHERE ���_���� = 8 

SELECT �볺��.���_�볺���, �볺��.���, �볺��.����������_�����,
�볺��.�����_��������, �볺��.��_�������
FROM �볺�� LEFT JOIN ������_�������� ON
�볺��.���_�볺��� = ������_��������.���_��������_��������

SELECT �볺��.���, ����.������
FROM �볺�� INNER JOIN ���� ON �볺��.���_�볺��� = ����.���_����
WHERE ������ = ''

SELECT ����.������, �볺��.���_�볺��� FROM ���� INNER JOIN �볺��
ON ����.���_����= �볺��.���_�볺���
WHERE ����.������ IN ('BMW', 'Andre')

SELECT TOP 2 �����.���_������, �볺��.���, ����.������, ������_���_������.ֳ��_������
FROM �볺�� JOIN ���� ON �볺��.���_�볺��� = ������_���_������.���_������
JOIN ���� ON �볺��.���_�볺��� = ����.���_����
ORDER BY ������_���_������.ֳ��_������ DESC

SELECT �볺��.��� FROM �볺��
WHERE NOT EXISTS 
(SELECT * FROM ���� WHERE ����.���_���� = �볺��.���_�볺���)


SELECT ���_��������_���_������, ֳ��_������ AS [ֳ�� ������] FROM ������_���_������
WHERE ֳ��_������ > 1000;

8 ����
SELECT ���_�볺���, ��� FROM �볺�� WHERE ��� LIKE 'M%'
ORDER BY ���

SELECT TOP 3 ������_���_������.���_��������_���_������, ������_���_������.����_����������, ������_���_������.ֳ��_������
FROM ������_���_������ ORDER BY ������_���_������.����_���������� DESC

SELECT  ������_���_������.���_��������_���_������, ����.������
FROM ������_���_������  JOIN ���� ON ������_���_������.���_�볺��� = ����.���_����

SELECT  COUNT(������_���_������.���_��������_���_������) AS ���_�볺���, ����.������
FROM ������_���_������  JOIN ���� ON ������_���_������.���_��������_���_������ = ����.���_����
GROUP BY ����.������

9 ����

SELECT COUNT(����.���_����) AS ʳ���������� FROM ����
WHERE ������ LIKE '%Mercedes%'

SELECT MONTH(������_���_������.����_����������) AS Month, DAY(������_���_������.����_����������) AS Day, COUNT(������_���_������.���_��������_���_������) AS ʳ�����������������
FROM ������_���_������ GROUP BY MONTH(������_���_������.����_����������), DAY(������_���_������.����_����������)

SELECT �볺��.���_�볺���, SUM(������_���_������.ֳ��_������) AS ����
FROM �볺�� LEFT JOIN ������_���_������ ON �볺��.���_�볺���=������_���_������.���_�볺���
GROUP BY �볺��.���_�볺���

SELECT TOP 1 �볺��.���_�볺���, COUNT(������_���_������.���_��������_���_������) AS ʳ����������� FROM �볺��
JOIN ������_���_������ ON �볺��.���_�볺��� = ������_���_������.���_������
GROUP BY �볺��.���_�볺���
ORDER BY COUNT(������_���_������.���_��������_���_������) DESC


