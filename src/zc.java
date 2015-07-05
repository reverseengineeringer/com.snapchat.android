import com.snapchat.android.controller.stories.StoryLoadingContext;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;

public class zc
  implements aio
{
  protected final StoryCollection b;
  protected final zd c;
  protected ajr d;
  
  public zc(@cgb ajr paramajr, @cgb StoryCollection paramStoryCollection)
  {
    this(zd.a(), paramajr, paramStoryCollection);
  }
  
  protected zc(zd paramzd, ajr paramajr, StoryCollection paramStoryCollection)
  {
    d = ((ajr)ck.a(paramajr));
    c = ((zd)ck.a(paramzd));
    b = ((StoryCollection)ck.a(paramStoryCollection));
  }
  
  public final int a(int paramInt, aje paramaje)
  {
    return c.a(b, paramInt, paramaje, false, StoryLoadingContext.LOAD_FROM_VIEWING);
  }
  
  public void a() {}
  
  public void a(@cgb aje paramaje, @cgb SnapViewSessionStopReason paramSnapViewSessionStopReason, int paramInt) {}
  
  public void b() {}
  
  @cgc
  public aje c()
  {
    d = b.d(d);
    return d;
  }
  
  @cgc
  public aje d()
  {
    return b.c(d);
  }
  
  public final boolean e()
  {
    return true;
  }
  
  public final boolean f()
  {
    return b instanceof ajg;
  }
  
  public final boolean g()
  {
    return b.a(d);
  }
  
  public final int h()
  {
    return b.g(d);
  }
}

/* Location:
 * Qualified Name:     zc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */