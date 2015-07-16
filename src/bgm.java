public abstract class bgm
{
  private final bai mCrasher;
  public boolean mIsReleased = false;
  
  public bgm()
  {
    this(bai.a());
  }
  
  private bgm(@chc bai parambai)
  {
    mCrasher = parambai;
  }
  
  public abstract void c();
  
  public final void e()
  {
    if (mIsReleased)
    {
      getClass().getName();
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
      getClass().getName();
      e();
    }
  }
}

/* Location:
 * Qualified Name:     bgm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */