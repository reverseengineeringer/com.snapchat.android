import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bja
{
  @SerializedName("mField")
  protected String mfield;
  @SerializedName("mKey")
  protected String mkey;
  
  public final String a()
  {
    return mkey;
  }
  
  public final void a(String paramString)
  {
    mkey = paramString;
  }
  
  public final String b()
  {
    return mfield;
  }
  
  public final void b(String paramString)
  {
    mfield = paramString;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bja)) {
      return false;
    }
    paramObject = (bja)paramObject;
    return new EqualsBuilder().append(mkey, mkey).append(mfield, mfield).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(mkey).append(mfield).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bja
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */