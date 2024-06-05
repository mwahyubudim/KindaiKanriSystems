package kindaikanrisystem.javakenshuu.model;

import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Employee {
    @Id
    @Column(length = 10)
    private String employeeId;

    @Column(nullable = false)
    private LocalDate joiningDate;

    @Column(length = 20)
    private String name;

    @Column(length = 3)
    private String gender;

    @Column
    private int age;

    @Column(length = 10)
    private String department;

    @Column(length = 50)
    private String email;

    // Getters and Setters
}
