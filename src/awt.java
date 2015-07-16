public final class awt
  implements aww
{
  private final aww mInnerCallback;
  public boolean mIsCanceled = false;
  public final Object mMutex = new Object();
  
  public awt(aww paramaww)
  {
    mInnerCallback = paramaww;
  }
  
  public final void a(awm paramawm, awv paramawv)
  {
    synchronized (mMutex)
    {
      if (mIsCanceled) {
        return;
      }
      mInnerCallback.a(paramawm, paramawv);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     awt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */