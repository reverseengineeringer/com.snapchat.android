import android.content.Intent;
import com.google.gson.annotations.SerializedName;

public final class amz
  extends amd
  implements ts.b<amz.b>
{
  public final String a;
  public amz.b b;
  
  public amz(Intent paramIntent)
  {
    super(paramIntent);
    a = paramIntent.getStringExtra("new_password");
    a(amz.b.class, this);
  }
  
  public final Object b()
  {
    return new amz.a(a);
  }
  
  protected final String e()
  {
    return "/loq/and/get_password_strength";
  }
  
  @tn
  public final class a
    extends pl
  {
    @SerializedName("new_password")
    String a;
    
    public a(@cgb String paramString)
    {
      a = paramString;
    }
  }
  
  public class b
  {
    @SerializedName("password_strength")
    public String a;
    @SerializedName("message")
    public String b;
    
    public b(String paramString1, String paramString2)
    {
      a = paramString1;
      b = paramString2;
    }
  }
}

/* Location:
 * Qualified Name:     amz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */