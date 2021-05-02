package DiamonShop.Entity;

public class Slides {

	// nhan alt shif A de bat boi den
	private int id;
	private String img;
	private String caption;
	private String content;

	// ham dung
	public Slides(int id, String img, String caption, String content) {
		super();
		this.id = id;
		this.img = img;
		this.caption = caption;
		this.content = content;
	}

	public Slides() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getCaption() {
		return caption;
	}

	public void setCaption(String caption) {
		this.caption = caption;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	// nhan alt shift S + o de insert code generate

	// nhan alt shif S + R de tao get set

}
