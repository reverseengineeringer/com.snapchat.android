import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bhq
  extends bii
{
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bhq)) {
      return false;
    }
    return new EqualsBuilder().isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bhq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */