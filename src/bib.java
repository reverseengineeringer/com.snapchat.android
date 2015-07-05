import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bib
{
  @SerializedName("auth")
  protected bix auth;
  @SerializedName("conn_seq_num")
  protected Long connSeqNum;
  @SerializedName("conv_id")
  protected String convId;
  @SerializedName("from")
  protected String from;
  @SerializedName("to")
  protected List<String> to;
  
  public final bib a(String paramString)
  {
    from = paramString;
    return this;
  }
  
  public final bib a(List<String> paramList)
  {
    to = paramList;
    return this;
  }
  
  public final String a()
  {
    return from;
  }
  
  public final void a(bix parambix)
  {
    auth = parambix;
  }
  
  public final void a(Long paramLong)
  {
    connSeqNum = paramLong;
  }
  
  public final bib b(bix parambix)
  {
    auth = parambix;
    return this;
  }
  
  public final bib b(String paramString)
  {
    convId = paramString;
    return this;
  }
  
  public final List<String> b()
  {
    return to;
  }
  
  public final String c()
  {
    return convId;
  }
  
  public final bix d()
  {
    return auth;
  }
  
  public final Long e()
  {
    return connSeqNum;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bib)) {
      return false;
    }
    paramObject = (bib)paramObject;
    return new EqualsBuilder().append(from, from).append(to, to).append(convId, convId).append(auth, auth).append(connSeqNum, connSeqNum).isEquals();
  }
  
  public final boolean f()
  {
    return connSeqNum != null;
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(from).append(to).append(convId).append(auth).append(connSeqNum).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bib
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */