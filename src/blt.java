import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class blt
  extends bhy
{
  @SerializedName("action")
  protected String action;
  @SerializedName("code")
  protected String code;
  @SerializedName("dsig")
  protected String dsig;
  @SerializedName("dtoken1i")
  protected String dtoken1i;
  @SerializedName("password")
  protected String password;
  @SerializedName("type")
  protected String type;
  
  public final blt a(String paramString)
  {
    action = paramString;
    return this;
  }
  
  public final blt b(String paramString)
  {
    code = paramString;
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof blt)) {
      return false;
    }
    paramObject = (blt)paramObject;
    return new EqualsBuilder().append(action, action).append(code, code).append(type, type).append(password, password).append(dtoken1i, dtoken1i).append(dsig, dsig).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(action).append(code).append(type).append(password).append(dtoken1i).append(dsig).toHashCode();
  }
  
  public final blt i(String paramString)
  {
    type = paramString;
    return this;
  }
  
  public final void j(String paramString)
  {
    password = paramString;
  }
  
  public final void k(String paramString)
  {
    dtoken1i = paramString;
  }
  
  public final void l(String paramString)
  {
    dsig = paramString;
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
  
  public static enum a
  {
    DEFAULT_TYPE("DEFAULT_TYPE"),  TWO_FA_TYPE("TWO_FA_TYPE"),  UNRECOGNIZED_VALUE("UNRECOGNIZED_VALUE");
    
    public final String value;
    
    private a(String paramString)
    {
      value = paramString;
    }
    
    public final String toString()
    {
      return value;
    }
  }
}

/* Location:
 * Qualified Name:     blt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */