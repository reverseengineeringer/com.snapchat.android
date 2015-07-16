import android.content.Intent;
import com.google.gson.annotations.SerializedName;

public final class aod
  extends ana
  implements ui.b<blk>
{
  public blk a;
  public boolean b = false;
  private final String c;
  private final String d;
  
  public aod(Intent paramIntent)
  {
    super(paramIntent);
    c = paramIntent.getStringExtra("action");
    d = paramIntent.getStringExtra("pre_auth_token");
    registerCallback(blk.class, this);
  }
  
  public final Object getRequestPayload()
  {
    return new aod.a(c, d);
  }
  
  protected final String l_()
  {
    return "/loq/two_fa_phone_verify";
  }
  
  @ud
  static final class a
    extends qp
  {
    @SerializedName("action")
    String a;
    @SerializedName("pre_auth_token")
    String b;
    
    public a(String paramString1, String paramString2)
    {
      a = paramString1;
      b = paramString2;
    }
  }
}

/* Location:
 * Qualified Name:     aod
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */