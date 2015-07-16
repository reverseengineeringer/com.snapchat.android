import android.content.Intent;
import com.google.gson.annotations.SerializedName;

public final class anq
  extends ana
  implements ui.b<blk>
{
  public blk a;
  public boolean b = false;
  private final String c;
  
  public anq(Intent paramIntent)
  {
    super(paramIntent);
    c = paramIntent.getStringExtra("new_password");
    registerCallback(blk.class, this);
  }
  
  public final Object getRequestPayload()
  {
    return new anq.a(c);
  }
  
  protected final String l_()
  {
    return "/loq/and/change_password";
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
}

/* Location:
 * Qualified Name:     anq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */