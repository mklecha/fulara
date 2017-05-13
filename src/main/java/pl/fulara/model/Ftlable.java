package pl.fulara.model;

import com.fasterxml.jackson.databind.ObjectMapper;
import java.util.Map;

public abstract class Ftlable {
	public Map<String, Object> toFtl() {
		ObjectMapper oMapper = new ObjectMapper();
		Map resultMap = oMapper.convertValue(this, Map.class);
		return resultMap;
	}
}