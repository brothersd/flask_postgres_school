async function loadStudents() {
    const response = await fetch('http://localhost:5000/students');
    const students = await response.json();

    console.log(students) //shows outputs in dev console for testing

    const container =  document.getElementById('students');

    //iterate thru each student in array
    for (const student of students) {
        console.log(student)
        const p = document.createElement('p');
        p.textContent = '${student.first_name}'
        container.appendChild(p);
    }
}

loadStudents()