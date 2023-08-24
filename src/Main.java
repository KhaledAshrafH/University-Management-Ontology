public class Main {
    public static void main(String[] args) {
        new ClipsGui();
    }
}

/*

  Computer Science
  Cairo University


PREFIX uri: <http://www.semanticweb.org/midos/ontologies/2022/11/untitled-ontology-14#>

query Q1
SELECT ?n
	WHERE { ?subject uri:belonging_to ?object.
			?object uri:department_code "CS"^^xsd:string.
			?subject uri:name ?n.}

query Q2
SELECT  ?name
	WHERE { ?student uri:is_studying ?course.
		 ?student uri:name "Ahmed"^^xsd:string.
			?course uri:name ?name}

query Q3
SELECT   ?name
	WHERE {?course uri:offers ?faculty.
		?faculty uri:name "Computer Science"^^xsd:string.
			?course uri:name ?name}

query Q4
SELECT ?name
	WHERE {?l uri:lecturers_of_faculty ?faculty.
		?faculty uri:name "Computer Science"^^xsd:string.
			?l uri:name ?name}

query Q5
SELECT  ?name
	WHERE {?faculty uri:faculties_of_university ?university.
		?university uri:name "Cairo University"^^xsd:string.
			?faculty uri:name ?name}
* */