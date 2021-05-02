package DiamonShop.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


// lay danh sach du lieu trong database
public class MapperSlides implements RowMapper<Slides>{

	public Slides mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Slides slides = new Slides();
		slides.setId(rs.getInt("id")); //lay dung kieu va dung ten trong database
		slides.setImg(rs.getString("img"));
		slides.setCaption(rs.getString("caption"));
		slides.setContent(rs.getString("content"));	
		return slides;
	}

	
	
}
