import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bji
  extends bio
{
  @SerializedName("story_notes")
  protected List<bjj> storyNotes;
  
  public final List<bjj> c()
  {
    return storyNotes;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bji)) {
      return false;
    }
    paramObject = (bji)paramObject;
    return new EqualsBuilder().append(storyNotes, storyNotes).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(storyNotes).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bji
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */