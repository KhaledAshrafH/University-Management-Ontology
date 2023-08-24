# University Management Ontology

This project aims to create an ontology for a university using the Protege editor. The ontology defines various classes and their relationships within the university domain. It also includes queries and rules implemented in Protégé and CLIPS to retrieve information from the ontology.

## Introduction

The University Ontology Project focuses on developing a comprehensive ontology to represent the structure and relationships within a university domain. The ontology provides a conceptual model that defines various classes and their associations, enabling efficient management and retrieval of university-related information.

## Ontology Classes

The following classes are defined in the university ontology:

- University
- Faculty
- Department
- Program (Module)
- Course
- Academic Staff
- Exams
- Course Work
- Thesis
- Lecture Hall
- Library
- Lab Room
- Lecturer
- TA
- Student

The ontology distinguishes between individuals and classes, as well as subclass and other relationships, to accurately represent the university's organizational structure and academic offerings.

## Queries in Protégé

Protégé allows the execution of queries to retrieve specific information from the university ontology. The following queries can be executed:

1. Get all TAs belonging to a department.
2. Get the courses a student is currently studying.
3. Get all the courses offered by a certain faculty.
4. Get Lecturers of a faculty.
5. Get all faculties of a university.

To execute these queries, constant values need to be provided for certain parameters such as "department," "student," "faculty," and "university."

## Queries in CLIPS

CLIPS, a rule-based programming language, is utilized to implement the queries and rules for retrieving information from the university ontology. The CLIPS implementation allows dynamic retrieval of information by taking inputs from the user. The following queries are implemented in CLIPS:

1. Get all TAs belonging to a department.
2. Get the courses a student is currently studying.
3. Get all the courses offered by a certain faculty.
4. Get Lecturers of a faculty.
5. Get all faculties of a university.

The CLIPS program prompts the user for input to execute the queries and provides the corresponding results.

## Graphical User Interface (GUI)

In addition to the command-line interface provided by Protégé and CLIPS, a Graphical User Interface (GUI) can be developed to interact with the university ontology. The GUI would provide a user-friendly interface to perform various operations, such as querying information, adding new entities, and visualizing the ontology hierarchy.

Here is an example of a GUI design for the university ontology:
<h1 align="center"></h1>
<br>
<p align="center" margin="auto">
    <kbd>
<img align="center" 
            src="https://github.com/KhaledAshrafH/University-Management-Ontology/blob/main/Gui%20img/1.png?raw=true"
            alt="KhaledAshrafH" width=600px  style="border-radius: 20px;"/>
    </kbd>
  </p>
 <h1 align="center"></h1>

 <br>
<p align="center" margin="auto">
    <kbd>
<img align="center" 
            src="https://github.com/KhaledAshrafH/University-Management-Ontology/blob/main/Gui%20img/2.png?raw=true"
            alt="KhaledAshrafH" width=600px style="border-radius: 20px;"/>
    </kbd>
  </p>
 <h1 align="center"></h1>

  <br>
<p align="center" margin="auto">
    <kbd>
<img align="center" 
            src="https://github.com/KhaledAshrafH/University-Management-Ontology/blob/main/Gui%20img/3.png?raw=true"
            alt="KhaledAshrafH" width=600px style="border-radius: 20px;"/>
    </kbd>
  </p>
 <h1 align="center"></h1>

  <br>
<p align="center" margin="auto">
    <kbd>
<img align="center" 
            src="https://github.com/KhaledAshrafH/University-Management-Ontology/blob/main/Gui%20img/4.png?raw=true"
            alt="KhaledAshrafH" width=600px  style="border-radius: 20px;"/>
    </kbd>
  </p>
 <h1 align="center"></h1>

  <br>
<p align="center" margin="auto">
    <kbd>
<img align="center" 
            src="https://github.com/KhaledAshrafH/University-Management-Ontology/blob/main/Gui%20img/5.png?raw=true"
            alt="KhaledAshrafH" width=600px style="border-radius: 20px;"/>
    </kbd>
  </p>
 <h1 align="center"></h1>

  <br>
<p align="center" margin="auto">
    <kbd>
<img align="center" 
            src="https://github.com/KhaledAshrafH/University-Management-Ontology/blob/main/Gui%20img/output.png?raw=true"
            alt="KhaledAshrafH" width=600px style="border-radius: 20px;"/>
    </kbd>
  </p>

The GUI allows users to select different queries, enter parameter values, and view the results in a structured format. It provides an intuitive way to interact with the ontology and retrieve information efficiently.

## Report

The project includes a detailed report that provides a deeper understanding of the university ontology. The report contains a diagram of the ontology, showcasing the relationships between the classes. Additionally, it describes the slots of each class, providing detailed information about their attributes and relationships.

## Getting Started

To get started with this project, follow these steps:

1. Clone the repository:
```
git clone https://github.com/KhaledAshrafH/University-Management-Ontology.git
```

2. Open the Protege editor and import the ontology file.

3. Execute the queries in Protégé to retrieve the desired information.

4. To run the CLIPS implementation, ensure you have CLIPS installed on your system.

5. Run the CLIPS program and provide inputs as prompted to execute the queries.

6. Review the report included in the project to gain a better understanding of the ontology, relationships, and class attributes.

## Contributing

Contributions to this project are welcome. Feel free to fork the repository and submit pull requests to suggest improvements, add new featuresor fix any issues.

## Team

This project was created by a team of four computer science students at Faculty of Computers and Artificial Intelligence Cairo University. The team members are:

- [Khaled Ashraf Hanafy Mahmoud - 20190186](https://github.com/KhaledAshrafH).
- [Ahmed Sayed Hassan Youssef - 20190034](https://github.com/AhmedSayed117).
- [Samah Moustafa Hussien Mahmoud - 20190248](https://github.com/Samah-20190248).
- [Ayatullah Esam El-din Mohamed - 20190123](https://github.com/oshaesam1).

We would like to express our gratitude to all team members for their hard work and contributions to this project.

## Acknowledgments

This project is based on Semantic Web course at Faculty of Computers and Artificial Intelligence Cairo University. We would like to thank Prof. Abeer Elkorany for his guidance and support throughout this course.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE.md) file for details.
