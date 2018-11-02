package util;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class SqlUtil {
	
	public static String addWhereSql(String sql, Map<String, Object> map) {
		Set<String> keySet = map.keySet();
		for(Iterator iter = keySet.iterator(); iter.hasNext();) {
			String key = (String) iter.next();
			String value = (String) map.get(key);
			if(value != null) {
				sql += " and "+key+"='"+value+"'";
			}
		}
		sql += ";";
		return sql;
	}
}
