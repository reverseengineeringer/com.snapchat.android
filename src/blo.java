import com.google.gson.annotations.SerializedName;
import java.util.Locale;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class blo
{
  @SerializedName("display")
  protected String display;
  @SerializedName("id")
  protected String id;
  @SerializedName("is_hidden")
  protected Boolean isHidden;
  @SerializedName("is_new_snapchatter")
  protected Boolean isNewSnapchatter;
  @SerializedName("name")
  protected String name;
  @SerializedName("suggest_reason")
  protected String suggestReason;
  @SerializedName("suggest_reason_display")
  protected String suggestReasonDisplay;
  
  public final String a()
  {
    return id;
  }
  
  public final String b()
  {
    return name;
  }
  
  public final blo.a c()
  {
    return blo.a.a(suggestReason);
  }
  
  public final String d()
  {
    return suggestReasonDisplay;
  }
  
  public final String e()
  {
    return display;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof blo)) {
      return false;
    }
    paramObject = (blo)paramObject;
    return new EqualsBuilder().append(id, id).append(name, name).append(suggestReason, suggestReason).append(suggestReasonDisplay, suggestReasonDisplay).append(display, display).append(isHidden, isHidden).append(isNewSnapchatter, isNewSnapchatter).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(id).append(name).append(suggestReason).append(suggestReasonDisplay).append(display).append(isHidden).append(isNewSnapchatter).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
  
  public static enum a
  {
    NEW_CONTACT("new_contact"),  NEW_SNAPCHATTER("new_snapchatter"),  UNKNOWN("unknown"),  UNRECOGNIZED_VALUE("UNRECOGNIZED_VALUE");
    
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
 * Qualified Name:     blo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */