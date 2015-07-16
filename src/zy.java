import com.snapchat.android.controller.stories.StoryLoadingContext;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;

public class zy
  implements ajk
{
  protected final StoryCollection b;
  protected final zz c;
  protected akl d;
  
  public zy(@chc akl paramakl, @chc StoryCollection paramStoryCollection)
  {
    this(zz.a(), paramakl, paramStoryCollection);
  }
  
  protected zy(zz paramzz, akl paramakl, StoryCollection paramStoryCollection)
  {
    d = ((akl)co.a(paramakl));
    c = ((zz)co.a(paramzz));
    b = ((StoryCollection)co.a(paramStoryCollection));
  }
  
  public final int a(int paramInt, aka paramaka)
  {
    return c.a(b, paramInt, paramaka, false, StoryLoadingContext.LOAD_FROM_VIEWING);
  }
  
  public void a() {}
  
  public void a(@chc aka paramaka, @chc SnapViewSessionStopReason paramSnapViewSessionStopReason, int paramInt) {}
  
  public void b() {}
  
  @chd
  public aka c()
  {
    d = b.d(d);
    return d;
  }
  
  @chd
  public aka d()
  {
    return b.c(d);
  }
  
  public final boolean e()
  {
    return true;
  }
  
  public final boolean f()
  {
    return b instanceof akc;
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
 * Qualified Name:     zy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */