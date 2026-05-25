// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StudentRecords {
    struct Student {
        string name;
        string studentId;
        string grade;
        bool exists;
    }

    mapping(string => Student) private students;
    string[] private studentIds;

    event StudentAdded(string studentId, string name, string grade);
    event StudentUpdated(string studentId, string name, string grade);

    function addStudent(
        string memory _studentId,
        string memory _name,
        string memory _grade
    ) public {
        require(bytes(_studentId).length > 0, "Student ID is required");
        require(bytes(_name).length > 0, "Name is required");
        require(bytes(_grade).length > 0, "Grade is required");
        require(!students[_studentId].exists, "Student already exists");

        students[_studentId] = Student(_name, _studentId, _grade, true);
        studentIds.push(_studentId);

        emit StudentAdded(_studentId, _name, _grade);
    }

    function updateStudent(
        string memory _studentId,
        string memory _name,
        string memory _grade
    ) public {
        require(students[_studentId].exists, "Student does not exist");
        require(bytes(_name).length > 0, "Name is required");
        require(bytes(_grade).length > 0, "Grade is required");

        students[_studentId].name = _name;
        students[_studentId].grade = _grade;

        emit StudentUpdated(_studentId, _name, _grade);
    }

    function getStudent(
        string memory _studentId
    ) public view returns (string memory, string memory, string memory) {
        require(students[_studentId].exists, "Student does not exist");

        Student memory student = students[_studentId];

        return (student.studentId, student.name, student.grade);
    }

    function getTotalStudents() public view returns (uint256) {
        return studentIds.length;
    }

    function getStudentIdByIndex(uint256 _index) public view returns (string memory) {
        require(_index < studentIds.length, "Invalid index");
        return studentIds[_index];
    }
}