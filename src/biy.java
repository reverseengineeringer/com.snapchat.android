import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class biy
  extends bif
{
  @SerializedName("age")
  protected String age;
  @SerializedName("birthday")
  protected String birthday;
  @SerializedName("email")
  protected String email;
  @SerializedName("study_settings")
  protected String studySettings;
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof biy)) {
      return false;
    }
    paramObject = (biy)paramObject;
    return new EqualsBuilder().append(email, email).append(age, age).append(birthday, birthday).append(studySettings, studySettings).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(email).append(age).append(birthday).append(studySettings).toHashCode();
  }
  
  public final void p(String paramString)
  {
    email = paramString;
  }
  
  public final void q(String paramString)
  {
    age = paramString;
  }
  
  public final void r(String paramString)
  {
    birthday = paramString;
  }
  
  public final void s(String paramString)
  {
    studySettings = paramString;
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     biy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */