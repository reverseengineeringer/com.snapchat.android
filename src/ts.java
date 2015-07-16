import com.squareup.otto.Bus;

public final class ts
  extends tx
{
  private ts.a mCallback;
  
  public ts(@chc ts.a parama)
  {
    mCallback = parama;
  }
  
  protected final String getPath()
  {
    return "/loq/clear_feed";
  }
  
  public final void onResult(@chc us paramus)
  {
    super.onResult(paramus);
    if (paramus.d()) {
      mCallback.a();
    }
    for (;;)
    {
      bbo.a().a(new bfm());
      return;
      mCallback.v_();
    }
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void v_();
  }
}

/* Location:
 * Qualified Name:     ts
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */