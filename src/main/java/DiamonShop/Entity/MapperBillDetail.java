package DiamonShop.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperBillDetail implements RowMapper<BillDetail> {

	public BillDetail mapRow(ResultSet rs, int rowNum) throws SQLException {

		BillDetail bills = new BillDetail();
		bills.setId(rs.getInt("id"));
		bills.setId_product(rs.getInt("id_product "));
		bills.setId_bills(rs.getInt("id_bills"));
		bills.setQuanty(rs.getInt("quanty"));
		bills.setTotal(rs.getDouble("total"));		
		return bills;
	}
}
