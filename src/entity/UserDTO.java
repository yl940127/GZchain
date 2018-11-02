package entity;
public class UserDTO {
    private String username;
    private String password;
    private Boolean company = false;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Boolean getRememberMe() {
        return company;
    }

    public void setRememberMe(Boolean rememberMe) {
        this.company = rememberMe;
    }
}
