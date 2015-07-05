import com.snapchat.android.Timber;

public final class ahz
  implements alb.a
{
  private final awp a;
  private final aif b;
  
  public ahz(@cgb awp paramawp, @cgb aif paramaif)
  {
    a = ((awp)ck.a(paramawp));
    b = ((aif)ck.a(paramaif));
  }
  
  public final void a(alc paramalc)
  {
    b.a(d, false);
  }
  
  @caq
  public final void a(alc paramalc, bfl parambfl, uc paramuc)
  {
    if (paramuc == null)
    {
      Timber.c("ResourceDownloadHandler", "NetworkResult is null", new Object[0]);
      b.a(d, false);
      return;
    }
    if (!paramuc.d())
    {
      Timber.c("ResourceDownloadHandler", "NetworkResult was unsuccessful", new Object[0]);
      b.a(d, false);
      return;
    }
    if ((parambfl == null) || (mSize <= 0))
    {
      Timber.c("ResourceDownloadHandler", "Buffer is null or empty", new Object[0]);
      b.a(d, false);
      return;
    }
    paramalc = d;
    try
    {
      a.a(paramalc, mBuffer);
      b.a(paramalc, true);
      return;
    }
    catch (aws parambfl)
    {
      for (;;)
      {
        Timber.a("ResourceDownloadHandler", parambfl);
        b.a(paramalc, false);
      }
    }
  }
}

/* Location:
 * Qualified Name:     ahz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */