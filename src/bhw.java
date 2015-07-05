import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bhw
{
  @SerializedName("story")
  protected bjg story;
  @SerializedName("viewed")
  protected Boolean viewed;
  
  public final bjg a()
  {
    return story;
  }
  
  public final Boolean b()
  {
    return viewed;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bhw)) {
      return false;
    }
    paramObject = (bhw)paramObject;
    return new EqualsBuilder().append(story, story).append(viewed, viewed).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(story).append(viewed).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bhw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */