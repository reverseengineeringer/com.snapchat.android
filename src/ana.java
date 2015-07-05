import android.content.Intent;
import com.google.gson.annotations.SerializedName;

public final class ana
  extends amd
  implements ts.b<ana.b>
{
  public boolean a = false;
  public String b;
  private final String c;
  
  public ana(Intent paramIntent)
  {
    super(paramIntent);
    c = paramIntent.getStringExtra("password");
    a(ana.b.class, this);
  }
  
  public final Object b()
  {
    return new ana.a(c);
  }
  
  protected final String e()
  {
    return "/bq/reauth";
  }
  
  @tn
  public final class a
    extends pl
  {
    @SerializedName("password")
    String a;
    
    public a(@cgb String paramString)
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
 * Qualified Name:     ana
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */