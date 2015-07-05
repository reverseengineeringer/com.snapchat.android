import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bid
{
  @SerializedName("last_read_timestamp")
  protected Long lastReadTimestamp;
  @SerializedName("last_reader")
  protected String lastReader;
  @SerializedName("last_write_timestamp")
  protected Long lastWriteTimestamp;
  @SerializedName("last_write_type")
  protected String lastWriteType;
  @SerializedName("last_writer")
  protected String lastWriter;
  
  public final Long a()
  {
    return lastReadTimestamp;
  }
  
  public final String b()
  {
    return lastWriter;
  }
  
  public final Long c()
  {
    return lastWriteTimestamp;
  }
  
  public final String d()
  {
    return lastWriteType;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bid)) {
      return false;
    }
    paramObject = (bid)paramObject;
    return new EqualsBuilder().append(lastReader, lastReader).append(lastReadTimestamp, lastReadTimestamp).append(lastWriter, lastWriter).append(lastWriteTimestamp, lastWriteTimestamp).append(lastWriteType, lastWriteType).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(lastReader).append(lastReadTimestamp).append(lastWriter).append(lastWriteTimestamp).append(lastWriteType).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bid
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */