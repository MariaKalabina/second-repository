#!/bin/bash

# 1) Виведе список файлів та тек
echo "=== 1) Поточний вміст теки ==="
ls -la

# 2) Створить дві нових теки
mkdir dir1 dir2
echo "=== 2) Створено теки dir1 і dir2 ==="

# 3) Зайде в одну з нових тек
cd dir1
echo "=== 3) Зайшли в теку dir1 ==="

# 4) Створить декілька файлів
touch file1.txt file2.txt empty.txt
echo "=== 4) Створено файли: file1.txt, file2.txt, empty.txt ==="

# 5) Запише текст в один з файлів
echo 'Hello from Bash script!' > file1.txt
echo "=== 5) Записано текст у file1.txt ==="

# 6) Виведе текст з файлу на екран
echo "=== 6) Вміст file1.txt: ==="
cat file1.txt

# 7) Виведе вміст теки
echo "=== 7) Вміст теки dir1: ==="
ls -la

# 8) Перемістить пустий файл в іншу теку
mv empty.txt ../dir2/
echo "=== 8) Переміщено empty.txt у dir2 ==="

# 9) Зайде в теку в яку був переміщений файл
cd ../dir2
echo "=== 9) Зайшли в теку dir2 ==="

# 10) Запише в файл текст "name": "test"
echo '"name": "test"' > empty.txt
echo "=== 10) Записано у файл empty.txt ==="
cat empty.txt

# 11) Здійснить пошук з допомогою команди grep по слову name
echo "=== 11) Пошук слова 'name' у файлі ==="
grep "name" empty.txt

# 12) Якщо name буде test, на екран виводиться напис
if grep -q '"name": "test"' empty.txt; then
  echo "=== 12) Баш-скрипт успішно відпрацював ==="
else
  echo "=== 12) Помилка: значення name не test ==="
fi
