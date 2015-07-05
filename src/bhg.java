import com.google.gson.annotations.SerializedName;
import java.util.Locale;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bhg
{
  @SerializedName("android_href")
  protected String androidHref;
  @SerializedName("href")
  protected String href;
  @SerializedName("ios_href")
  protected String iosHref;
  @SerializedName("itunes_id")
  protected String itunesId;
  @SerializedName("type")
  protected String type;
  
  public final bhg.a a()
  {
    return bhg.a.a(type);
  }
  
  public final String b()
  {
    return androidHref;
  }
  
  public final String c()
  {
    return href;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bhg)) {
      return false;
    }
    paramObject = (bhg)paramObject;
    return new EqualsBuilder().append(type, type).append(iosHref, iosHref).append(itunesId, itunesId).append(androidHref, androidHref).append(href, href).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(type).append(iosHref).append(itunesId).append(androidHref).append(href).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
  
  public static enum a
  {
    LINK("link"),  UNRECOGNIZED_VALUE("UNRECOGNIZED_VALUE");
    
    private final String value;
    
    private a(String paramString)
    {
      value = paramString;
    }
    
    public static a a(String paramString)
    {
      try
      {
        paramString = valueOf(paramString.toUpperCase(Locale.US));
        return paramString;
      }
      catch (Exception paramString) {}
      return UNRECOGNIZED_VALUE;
    }
    
    public final String toString()
    {
      return value;
    }
  }
}

/* Location:
 * Qualified Name:     bhg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */