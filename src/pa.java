import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.ui.swipefilters.FilterPageType;

public final class pa
{
  public int a;
  public int b = 0;
  public int c = 0;
  public int d = 0;
  public oz e = new oz();
  public oz f = new oz();
  
  public final void a(@chc asm paramasm, @chc oz paramoz)
  {
    boolean bool2 = true;
    if (paramasm.a().equals(a)) {
      return;
    }
    String str = null;
    if ((paramasm instanceof ata))
    {
      d += 1;
      str = b.mFilterId;
    }
    b = str;
    a = paramasm.a();
    c = paramasm.b();
    boolean bool1;
    if (c == FilterPageType.GEOFILTER)
    {
      bool1 = true;
      if (a != 0) {
        break label111;
      }
    }
    for (;;)
    {
      AnalyticsEvents.a(a, bool1, bool2, b);
      return;
      bool1 = false;
      break;
      label111:
      bool2 = false;
    }
  }
}

/* Location:
 * Qualified Name:     pa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */