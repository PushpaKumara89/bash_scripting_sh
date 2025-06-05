# 🧾 Bash Scripting Sinhala Guide

## 🧑‍💻 Introduction to Bash Scripting

* Bash script එකක් කියන්නේ command line වල typed කරන දේවල් automate කරන්න ලියන text file එකක්.
* මුලින්ම bash script එකට `#!/bin/bash` shebang එක දාන්න.

```bash
#!/bin/bash
echo "Hello World"
```

---

## 🔢 Command Line Arguments (Args)

### 🔹 What are arguments?

Arguments කියන්නේ script එක run කරන වෙලාවේ ඒකට pass කරන value.

**Example:**

```bash
./myscript.sh hello world
```

### 🔸 Special Variables:

| Variable | Sinhala Meaning   | Example Value |
| -------- | ----------------- | ------------- |
| `$0`     | Script එකේ නම     | `myscript.sh` |
| `$1`     | පළමු argument එක  | `hello`       |
| `$2`     | දෙවනි argument එක | `world`       |
| `$#`     | argument ගණන      | `2`           |
| `$@`     | සියලු argument    | `hello world` |

### 🧪 Example:

```bash
#!/bin/bash

echo "Script Name: $0"
echo "First Arg: $1"
echo "Second Arg: $2"
echo "Total Args: $#"
```

### 🔐 Bonus – Validate arguments:

```bash
if [ $# -lt 2 ]; then
  echo "Usage: $0 <arg1> <arg2>"
  exit 1
fi
```

---

## 🔁 Loops in Bash

### 🔄 while loop:

```bash
count=1
while [ $count -le 5 ]; do
  echo "Count: $count"
  ((count++))
done
```

### 🔄 for loop:

```bash
for name in "Amal" "Kamal" "Nimal"; do
  echo "Name: $name"
done
```

### 🔄 C-style for loop:

```bash
for ((i = 1; i <= 5; i++)); do
  echo "Index: $i"
done
```

---

## ➕ Number Comparison Operators

| Operator | Math Symbol | Sinhala Meaning | Example       |
| -------- | ----------- | --------------- | ------------- |
| `-lt`    | `<`         | අඩු             | `[ 3 -lt 5 ]` |
| `-le`    | `<=`        | අඩු හෝ සමාන     | `[ 5 -le 5 ]` |
| `-eq`    | `==`        | සමාන            | `[ 4 -eq 4 ]` |
| `-ne`    | `!=`        | සමාන නොවන       | `[ 3 -ne 4 ]` |
| `-gt`    | `>`         | වැඩි            | `[ 6 -gt 3 ]` |
| `-ge`    | `>=`        | වැඩි හෝ සමාන    | `[ 7 -ge 7 ]` |

---

## ⏱️ Using `sleep`

### 🔹 Basic usage:

```bash
echo "Start"
sleep 3
echo "End after 3 seconds"
```

### 🔄 Countdown with sleep:

```bash
for i in {5..1}; do
  echo $i
  sleep 1
done
```

### 🔄 Infinite loop with sleep:

```bash
while true; do
  echo "Repeating every 10s..."
  sleep 10
done
```

### 🕰️ Units:

| Example    | Meaning   |
| ---------- | --------- |
| `sleep 5`  | 5 seconds |
| `sleep 2m` | 2 minutes |
| `sleep 1h` | 1 hour    |
| `sleep 1d` | 1 day     |

---

## 🧠 Summary

✅ You learned:

* Bash script basics
* Using arguments `$1`, `$2`, `$#`
* `if` statements
* `while`, `for`, and C-style loops
* Number comparison: `-lt`, `-gt`, `-eq`, etc.
* Delays with `sleep`

🎯 Useful for automation, scheduling, scripting tasks, and learning DevOps fundamentals!
