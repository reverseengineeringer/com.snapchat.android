import com.snapchat.android.Timber;

public abstract class bfm
{
  private final azj mCrasher;
  public boolean mIsReleased = false;
  
  public bfm()
  {
    this(azj.a());
  }
  
  private bfm(@cgb azj paramazj)
  {
    mCrasher = paramazj;
  }
  
  public abstract void c();
  
  public final void e()
  {
    if (mIsReleased)
    {
      Timber.e(getClass().getName(), "Attempt to release object that was already released", new Object[0]);
      return;
    }
    c();
    mIsReleased = true;
  }
  
  public final void f()
  {
    if (mIsReleased) {
      throw new IllegalStateException(getClass().getName() + " already released!");
    }
  }
  
  public void finalize()
  {
    if (!mIsReleased)
    {
      Timber.f(getClass().getName(), "Failed to release!", new Object[0]);
      azj.b();
      e();
    }
  }
}

/* Location:
 * Qualified Name:     bfm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */