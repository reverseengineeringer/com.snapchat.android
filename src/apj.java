import com.snapchat.android.ui.SwipeImageView;
import com.snapchat.android.ui.SwipeViewState;
import com.snapchat.videotranscoder.task.VideoFilterRenderingTask;
import com.snapchat.videotranscoder.video.FragmentShader.Filter;

public final class apj
  implements apg.a
{
  public VideoFilterRenderingTask a;
  public FragmentShader.Filter b;
  public FragmentShader.Filter c;
  public float d;
  private arv e;
  private SwipeViewState f;
  
  public apj(arv paramarv, SwipeViewState paramSwipeViewState)
  {
    e = paramarv;
    f = paramSwipeViewState;
    b = FragmentShader.Filter.NORMAL;
    c = FragmentShader.Filter.NORMAL;
    d = 0.0F;
  }
  
  private void b()
  {
    int i = 0;
    int j = 1;
    boolean bool;
    arn localarn1;
    FragmentShader.Filter localFilter;
    if ((a != null) && (e.b() > 0))
    {
      if ((!f.l) || ((e.a(f.a) instanceof aro))) {
        break label184;
      }
      bool = true;
      arn localarn2 = e.a(f.a(bool));
      localarn1 = e.a(f.b(bool));
      localFilter = FragmentShader.Filter.NORMAL;
      if (!(localarn2 instanceof aro)) {
        break label192;
      }
      localFilter = b;
    }
    label184:
    label192:
    for (;;)
    {
      if (b != localFilter)
      {
        b = localFilter;
        i = 1;
      }
      localFilter = FragmentShader.Filter.NORMAL;
      if ((localarn1 instanceof aro)) {
        localFilter = b;
      }
      if (c != localFilter)
      {
        c = localFilter;
        i = j;
      }
      for (;;)
      {
        if (i != 0) {
          a();
        }
        return;
        bool = false;
        break;
      }
    }
  }
  
  public final void a()
  {
    a.changeFilter(b, c);
  }
  
  public final void a(SwipeImageView paramSwipeImageView)
  {
    d = paramSwipeImageView.getScrollOffset();
    if (a != null)
    {
      b();
      a.changeSplit(d);
    }
  }
  
  public final void a(SwipeImageView paramSwipeImageView, boolean paramBoolean)
  {
    if ((paramBoolean) && (a != null)) {
      b();
    }
  }
  
  public final void q() {}
}

/* Location:
 * Qualified Name:     apj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */