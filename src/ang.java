import android.content.Intent;
import com.google.gson.annotations.SerializedName;

public final class ang
  extends amd
  implements ts.b<bkj>
{
  public bkj a;
  public boolean b = false;
  private final String c;
  private final String d;
  
  public ang(Intent paramIntent)
  {
    super(paramIntent);
    c = paramIntent.getStringExtra("action");
    d = paramIntent.getStringExtra("pre_auth_token");
    a(bkj.class, this);
  }
  
  public final Object b()
  {
    return new ang.a(c, d);
  }
  
  protected final String e()
  {
    return "/loq/two_fa_phone_verify";
  }
  
  @tn
  static final class a
    extends pz
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
 * Qualified Name:     ang
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */