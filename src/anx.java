import android.content.Intent;
import com.google.gson.annotations.SerializedName;

public final class anx
  extends ana
  implements ui.b<anx.b>
{
  public boolean a = false;
  public String b;
  private final String c;
  
  public anx(Intent paramIntent)
  {
    super(paramIntent);
    c = paramIntent.getStringExtra("password");
    registerCallback(anx.b.class, this);
  }
  
  public final Object getRequestPayload()
  {
    return new anx.a(c);
  }
  
  protected final String l_()
  {
    return "/bq/reauth";
  }
  
  @ud
  public final class a
    extends qc
  {
    @SerializedName("password")
    String a;
    
    public a(@chc String paramString)
    {
      a = paramString;
    }
  }
  
  public class b
  {
    @SerializedName("message")
    String a;
  }
}

/* Location:
 * Qualified Name:     anx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */