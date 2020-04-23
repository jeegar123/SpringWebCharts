package com.springweb.charts.demo.repo;

import com.springweb.charts.demo.model.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Objects;

@SuppressWarnings("SpringDataRepositoryMethodReturnTypeInspection")
public interface DataRepository extends JpaRepository<Users,Integer> {

    @Query("SELECT type ,COUNT(status) from Users where status=1 GROUP BY type")
    public List<Object[]> getActiveCountByRole();
}
