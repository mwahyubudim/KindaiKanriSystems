package kindaikanrisystem.javakenshuu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import kindaikanrisystem.javakenshuu.model.Employee;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, String> {
}
