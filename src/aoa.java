import android.content.Intent;
import com.google.gson.annotations.SerializedName;

public final class aoa
  extends ana
  implements ui.b<bln>
{
  public boolean a;
  public bln b;
  private String c;
  private String d;
  
  public aoa(Intent paramIntent)
  {
    super(paramIntent);
    a = paramIntent.getBooleanExtra("refresh_suggestions", true);
    c = paramIntent.getStringExtra("email");
    d = paramIntent.getStringExtra("requested_username");
    registerCallback(bln.class, this);
  }
  
  public final boolean d()
  {
    return false;
  }
  
  public final Object getRequestPayload()
  {
    return new aoa.a(c, d);
  }
  
  public final String l_()
  {
    return "/bq/suggest_username";
  }
  
  @ud
  public final class a
    extends qc
  {
    @SerializedName("username")
    String a;
    @SerializedName("requested_username")
    String b;
    
    public a(@chc String paramString1, @chc String paramString2)
    {
      a = paramString1;
      b = paramString2;
    }
  }
}

/* Location:
 * Qualified Name:     aoa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */