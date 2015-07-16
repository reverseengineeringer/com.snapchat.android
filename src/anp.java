import android.content.Intent;
import com.google.gson.annotations.SerializedName;

public final class anp
  extends ana
  implements ui.b<blm>
{
  public blm a;
  public boolean b = false;
  private final String c;
  private final akr d;
  
  public anp(Intent paramIntent)
  {
    this(paramIntent, akr.a());
  }
  
  private anp(Intent paramIntent, akr paramakr)
  {
    super(paramIntent);
    d = paramakr;
    c = paramIntent.getStringExtra("email");
    registerCallback(blm.class, this);
  }
  
  public final Object getRequestPayload()
  {
    return new anp.a(c);
  }
  
  protected final String l_()
  {
    return "/loq/and/change_email";
  }
  
  @ud
  public final class a
    extends qc
  {
    @SerializedName("email")
    String a;
    
    public a(@chc String paramString)
    {
      a = paramString;
    }
  }
}

/* Location:
 * Qualified Name:     anp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */