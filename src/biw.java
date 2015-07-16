import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class biw
{
  @SerializedName("story")
  protected bkh story;
  @SerializedName("viewed")
  protected Boolean viewed;
  
  public final bkh a()
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
    if (!(paramObject instanceof biw)) {
      return false;
    }
    paramObject = (biw)paramObject;
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
 * Qualified Name:     biw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */