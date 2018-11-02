package constant;

public enum PlaceEnum {
	CHINA("中国", "1"),
	JAPAN("日本", "2"),
	HANG_ZHOU("杭州", "11"),
	OSAKA("大阪", "201"),
	TOKYO("东京", "202");
	
	private String key;
	private String value;
	
	private PlaceEnum(String key, String value) {
		this.key = key;
		this.value = value;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}
	
	public static String getValue(String key) {
		for (PlaceEnum place : PlaceEnum.values()) {
			if (place.getKey().equals(key)) {
				return place.getValue();
			}
		}
		return null;
	}
	
	public static String getKey(String value) {
		for (PlaceEnum place : PlaceEnum.values()) {
			if (place.getValue().equals(value)) {
				return place.getKey();
			}
		}
		return null;
	}
	
}
