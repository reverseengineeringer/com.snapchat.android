import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bje
{
  @SerializedName("postview_display_name")
  protected String postviewDisplayName;
  @SerializedName("preview_display_name")
  protected String previewDisplayName;
  @SerializedName("sponsor")
  protected String sponsor;
  @SerializedName("third_party_tag_url")
  protected String thirdPartyTagUrl;
  
  public final bje a(String paramString)
  {
    previewDisplayName = paramString;
    return this;
  }
  
  public final String a()
  {
    return previewDisplayName;
  }
  
  public final bje b(String paramString)
  {
    postviewDisplayName = paramString;
    return this;
  }
  
  public final String b()
  {
    return postviewDisplayName;
  }
  
  public final bje c(String paramString)
  {
    sponsor = paramString;
    return this;
  }
  
  public final String c()
  {
    return sponsor;
  }
  
  public final bje d(String paramString)
  {
    thirdPartyTagUrl = paramString;
    return this;
  }
  
  public final String d()
  {
    return thirdPartyTagUrl;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bje)) {
      return false;
    }
    paramObject = (bje)paramObject;
    return new EqualsBuilder().append(previewDisplayName, previewDisplayName).append(postviewDisplayName, postviewDisplayName).append(sponsor, sponsor).append(thirdPartyTagUrl, thirdPartyTagUrl).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(previewDisplayName).append(postviewDisplayName).append(sponsor).append(thirdPartyTagUrl).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bje
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */