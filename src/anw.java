import android.content.Intent;
import com.google.gson.annotations.SerializedName;

public final class anw
  extends ana
  implements ui.b<anw.b>
{
  public final String a;
  public anw.b b;
  
  public anw(Intent paramIntent)
  {
    super(paramIntent);
    a = paramIntent.getStringExtra("new_password");
    registerCallback(anw.b.class, this);
  }
  
  public final Object getRequestPayload()
  {
    return new anw.a(a);
  }
  
  protected final String l_()
  {
    return "/loq/and/get_password_strength";
  }
  
  @ud
  public final class a
    extends qc
  {
    @SerializedName("new_password")
    String a;
    
    public a(@chc String paramString)
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
 * Qualified Name:     anw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */