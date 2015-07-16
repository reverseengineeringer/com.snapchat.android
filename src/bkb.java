import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bkb
{
  @SerializedName("id")
  protected String id;
  @SerializedName("m")
  protected Integer m;
  @SerializedName("st")
  protected Integer st;
  @SerializedName("sts")
  protected Long sts = Long.valueOf(0L);
  @SerializedName("ts")
  protected Long ts = Long.valueOf(0L);
  @SerializedName("zipped")
  protected Boolean zipped;
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bkb)) {
      return false;
    }
    paramObject = (bkb)paramObject;
    return new EqualsBuilder().append(id, id).append(st, st).append(m, m).append(ts, ts).append(sts, sts).append(zipped, zipped).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(id).append(st).append(m).append(ts).append(sts).append(zipped).toHashCode();
  }
  
  public final String o()
  {
    return id;
  }
  
  public final Integer p()
  {
    return st;
  }
  
  public final Integer q()
  {
    return m;
  }
  
  public final Long r()
  {
    return ts;
  }
  
  public final Long s()
  {
    return sts;
  }
  
  public final Boolean t()
  {
    return zipped;
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bkb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */