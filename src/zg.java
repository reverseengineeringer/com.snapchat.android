import com.snapchat.android.Timber;
import com.snapchat.android.model.StoryCollection;

public final class zg
{
  public final aop a;
  public final StoryCollection b;
  public final zf c;
  public ajr d = null;
  public ajr e = null;
  public ajp f = null;
  public int g;
  public int h;
  
  public zg(@cgb ajr paramajr, @cgb StoryCollection paramStoryCollection) {}
  
  private zg(ajr paramajr, StoryCollection paramStoryCollection, aop paramaop, zf paramzf)
  {
    a = paramaop;
    c = paramzf;
    h = a;
    d = paramajr;
    e = paramajr;
    b = paramStoryCollection;
    g = 1;
    if ((b instanceof ajg))
    {
      h = (b.d() + 1);
      b.a(h);
    }
    for (;;)
    {
      Timber.c("StoryAdSequencer", "STORY-ADS: Created story ad sequencer for %s and %s with config:%s, index:%d, snapsSinceAd:%d", new Object[] { d, b, c, Integer.valueOf(g), Integer.valueOf(h) });
      return;
      h = 1;
    }
  }
  
  public final boolean a()
  {
    ajr localajr = d;
    zf localzf = c;
    int i = g;
    int j = h;
    int k = b.b(e);
    if ((localajr != null) && (!mCanAdFollow)) {}
    while ((i < c) || (j < a) || (k < b)) {
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     zg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */