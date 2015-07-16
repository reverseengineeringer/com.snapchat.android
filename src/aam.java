import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;

public final class aam
  implements aaj
{
  private final akr a;
  private final aan b;
  private int c = 0;
  private boolean d = false;
  
  public aam()
  {
    this(new akr(), new aan());
  }
  
  private aam(@chc akr paramakr, @chc aan paramaan)
  {
    a = paramakr;
    b = paramaan;
    akr.bw();
  }
  
  public final void a(@chc ajk paramajk)
  {
    c = 0;
    d = false;
  }
  
  public final void a(@chc aka paramaka, @chc ajk paramajk)
  {
    c = 0;
  }
  
  public final void a(@chc aka paramaka, @chc SnapViewSessionStopReason paramSnapViewSessionStopReason, int paramInt)
  {
    if (paramSnapViewSessionStopReason == SnapViewSessionStopReason.SKIP_REQUESTED)
    {
      akr.x(true);
      return;
    }
    c += 1;
  }
  
  public final void d(@chc aka paramaka)
  {
    if (((paramaka instanceof akl)) && (!d) && (!akr.bw()) && (c > 5) && (!paramaka.W()))
    {
      d = true;
      b.a(2131493527);
    }
  }
}

/* Location:
 * Qualified Name:     aam
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */