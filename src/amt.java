import android.content.Intent;
import com.google.gson.annotations.SerializedName;

public final class amt
  extends amd
  implements ts.b<bkj>
{
  public bkj a;
  public boolean b = false;
  private final String c;
  
  public amt(Intent paramIntent)
  {
    super(paramIntent);
    c = paramIntent.getStringExtra("new_password");
    a(bkj.class, this);
  }
  
  public final Object b()
  {
    return new amt.a(c);
  }
  
  protected final String e()
  {
    return "/loq/and/change_password";
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
}

/* Location:
 * Qualified Name:     amt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */