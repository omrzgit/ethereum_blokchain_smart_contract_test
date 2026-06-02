## 🔗 Ethereum Blockchain Smart Contract — Student Records

A simple Solidity smart contract for learning Solidity. Built to manage student records, using the Remix Ethereum IDE.

### 📋 Overview

`StudentRecords.sol` stores student data on-chain and exposes functions to add, update, and retrieve records. Written for the **Introduction to Blockchain Technology** course at SZABIST Islamabad (BSCS-8C).

### 🛠 Contract Functions

| Function | Type | Description |
|---|---|---|
| `addStudent(id, name, grade)` | `public` | Adds a new student; reverts if ID already exists |
| `updateStudent(id, name, grade)` | `public` | Updates a student's data; reverts if ID not found |
| `getStudent(id)` | `public view` | Returns student details by ID |
| `getTotalStudents()` | `public view` | Returns total number of students |
| `getStudentIdByIndex(index)` | `public view` | Returns a student ID by its list index |

### 🚀 Deployment

1. Open [Remix IDE](https://remix.ethereum.org)
2. Paste `StudentRecords.sol` into a new file
3. Compile with Solidity `^0.8.20`
4. Deploy using the **JavaScript VM** environment

### 💡 Usage Example

```solidity
// Add a student
addStudent("210", "Omer Muneer", "A")

// Retrieve the student
getStudent("210")
// returns: ("210", "Omer Muneer", "A")

// Update their grade
updateStudent("210", "Omer Muneer", "A+")
```

### ⚙️ Tech Stack

- **Language:** Solidity `^0.8.20`
- **IDE:** Remix Ethereum IDE
- **Network:** Ethereum (JavaScript VM / Testnet)
- **License:** MIT
