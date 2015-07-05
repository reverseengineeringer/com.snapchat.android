import android.content.Intent;
import com.google.gson.annotations.SerializedName;

public final class and
  extends amd
  implements ts.b<bkm>
{
  public boolean a;
  public bkm b;
  private String c;
  private String d;
  
  public and(Intent paramIntent)
  {
    super(paramIntent);
    a = paramIntent.getBooleanExtra("refresh_suggestions", true);
    c = paramIntent.getStringExtra("email");
    d = paramIntent.getStringExtra("requested_username");
    a(bkm.class, this);
  }
  
  public final Object b()
  {
    return new and.a(c, d);
  }
  
  public final String e()
  {
    return "/bq/suggest_username";
  }
  
  public final boolean i()
  {
    return false;
  }
  
  @tn
  public final class a
    extends pl
  {
    @SerializedName("username")
    String a;
    @SerializedName("requested_username")
    String b;
    
    public a(@cgb String paramString1, @cgb String paramString2)
    {
      a = paramString1;
      b = paramString2;
    }
  }
}

/* Location:
 * Qualified Name:     and
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */