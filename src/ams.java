import android.content.Intent;
import com.google.gson.annotations.SerializedName;

public final class ams
  extends amd
  implements ts.b<bkl>
{
  public bkl a;
  public boolean b = false;
  private final String c;
  private final ajx d;
  
  public ams(Intent paramIntent)
  {
    this(paramIntent, ajx.a());
  }
  
  private ams(Intent paramIntent, ajx paramajx)
  {
    super(paramIntent);
    d = paramajx;
    c = paramIntent.getStringExtra("email");
    a(bkl.class, this);
  }
  
  public final Object b()
  {
    return new ams.a(c);
  }
  
  protected final String e()
  {
    return "/loq/and/change_email";
  }
  
  @tn
  public final class a
    extends pl
  {
    @SerializedName("email")
    String a;
    
    public a(@cgb String paramString)
    {
      a = paramString;
    }
  }
}

/* Location:
 * Qualified Name:     ams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */