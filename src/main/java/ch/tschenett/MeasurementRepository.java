package ch.tschenett;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "measurements", path = "measurements")
public interface MeasurementRepository extends PagingAndSortingRepository<Measurement, Long> {
	List<Measurement> findByMetric(@Param("metric") String metric);
}
