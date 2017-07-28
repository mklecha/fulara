package pl.fulara.model;

import com.fasterxml.jackson.databind.ObjectMapper;

import java.util.Map;

public abstract class Ftlable {
	@SuppressWarnings("unchecked")
	public Map<String, Object> toFtl() {
		ObjectMapper oMapper = new ObjectMapper();
        return oMapper.convertValue(this, Map.class);
	}
}