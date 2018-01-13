package entity;

public class Contacts {
    Integer contactId;
    String name;
    String img;
    String content;
    String href;

    public void setHref(String href) {
        this.href = href;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public void setContactId(Integer contactId) {
        this.contactId = contactId;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public String getName() {
        return name;
    }

    public String getContent() {
        return content;
    }

    public String getHref() {
        return href;
    }

    public Integer getContactId() {
        return contactId;
    }
}
