import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bjf
  extends bhy
{
  @SerializedName("application_id")
  protected String applicationId;
  @SerializedName("attestation")
  protected String attestation;
  @SerializedName("dsig")
  protected String dsig;
  @SerializedName("dtoken1i")
  protected String dtoken1i;
  @SerializedName("height")
  protected Integer height;
  @SerializedName("max_video_height")
  protected Integer maxVideoHeight;
  @SerializedName("max_video_width")
  protected Integer maxVideoWidth;
  @SerializedName("nt")
  protected String nt;
  @SerializedName("password")
  protected String password;
  @SerializedName("pre_auth_token")
  protected String preAuthToken;
  @SerializedName("ptoken")
  protected String ptoken;
  @SerializedName("sflag")
  protected String sflag;
  @SerializedName("width")
  protected Integer width;
  
  public final void a(Integer paramInteger)
  {
    height = paramInteger;
  }
  
  public final void a(String paramString)
  {
    preAuthToken = paramString;
  }
  
  public final void b(Integer paramInteger)
  {
    width = paramInteger;
  }
  
  public final void b(String paramString)
  {
    password = paramString;
  }
  
  public final void c(Integer paramInteger)
  {
    maxVideoHeight = paramInteger;
  }
  
  public final void d(Integer paramInteger)
  {
    maxVideoWidth = paramInteger;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bjf)) {
      return false;
    }
    paramObject = (bjf)paramObject;
    return new EqualsBuilder().append(preAuthToken, preAuthToken).append(password, password).append(ptoken, ptoken).append(dtoken1i, dtoken1i).append(dsig, dsig).append(nt, nt).append(height, height).append(width, width).append(maxVideoHeight, maxVideoHeight).append(maxVideoWidth, maxVideoWidth).append(applicationId, applicationId).append(attestation, attestation).append(sflag, sflag).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(preAuthToken).append(password).append(ptoken).append(dtoken1i).append(dsig).append(nt).append(height).append(width).append(maxVideoHeight).append(maxVideoWidth).append(applicationId).append(attestation).append(sflag).toHashCode();
  }
  
  public final void i(String paramString)
  {
    ptoken = paramString;
  }
  
  public final void j(String paramString)
  {
    dtoken1i = paramString;
  }
  
  public final void k(String paramString)
  {
    dsig = paramString;
  }
  
  public final void l(String paramString)
  {
    nt = paramString;
  }
  
  public final void m(String paramString)
  {
    applicationId = paramString;
  }
  
  public final void n(String paramString)
  {
    attestation = paramString;
  }
  
  public final void o(String paramString)
  {
    sflag = paramString;
  }
  
  public String toString()
  {
    String str2 = ToStringBuilder.reflectionToString(this);
    String str3 = String.valueOf(password);
    String str1 = str2;
    if (!StringUtils.isEmpty(str2))
    {
      str1 = str2;
      if (StringUtils.length(str3) > 0)
      {
        str1 = "password" + "=";
        String str4 = StringUtils.repeat('*', StringUtils.length(str3) + 0);
        str1 = str2.replace(str1 + str3, str1 + str4);
      }
    }
    return str1;
  }
}

/* Location:
 * Qualified Name:     bjf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */