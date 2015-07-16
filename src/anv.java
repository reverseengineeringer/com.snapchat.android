import android.content.Intent;

public final class anv
  extends ana
  implements ui.b<blk>
{
  public blk a;
  public boolean b = false;
  
  public anv(Intent paramIntent)
  {
    super(paramIntent);
    registerCallback(blk.class, this);
  }
  
  public final Object getRequestPayload()
  {
    return new qc();
  }
  
  protected final String l_()
  {
    return "/loq/two_fa_recovery_code";
  }
}

/* Location:
 * Qualified Name:     anv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */