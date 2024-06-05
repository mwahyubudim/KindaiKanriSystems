package kindaikanrisystem.javakenshuu.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kindaikanrisystem.javakenshuu.model.Employee;
import kindaikanrisystem.javakenshuu.repository.EmployeeRepository;

@Service
public class EmployeeService {
    @Autowired
    private EmployeeRepository employeeRepository;

    public List<Employee> getAllEmployees() {
        return employeeRepository.findAll();
    }

    public Optional<Employee> getEmployeeById(String id) {
        return employeeRepository.findById(id);
    }

    public Employee addEmployee(Employee employee) {
        return employeeRepository.save(employee);
    }

    public void deleteEmployee(String id) {
        employeeRepository.deleteById(id);
    }
}
