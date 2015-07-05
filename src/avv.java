public final class avv
  implements avy
{
  private final avy mInnerCallback;
  public boolean mIsCanceled = false;
  public final Object mMutex = new Object();
  
  public avv(avy paramavy)
  {
    mInnerCallback = paramavy;
  }
  
  public final void a(avo paramavo, avx paramavx)
  {
    synchronized (mMutex)
    {
      if (mIsCanceled) {
        return;
      }
      mInnerCallback.a(paramavo, paramavx);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     avv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */