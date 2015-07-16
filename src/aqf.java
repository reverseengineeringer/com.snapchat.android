import com.snapchat.android.ui.SwipeImageView;
import com.snapchat.android.ui.SwipeViewState;
import com.snapchat.videotranscoder.task.VideoFilterRenderingTask;
import com.snapchat.videotranscoder.video.FragmentShader.Filter;

public final class aqf
  implements aqc.a
{
  public VideoFilterRenderingTask a;
  public FragmentShader.Filter b;
  public FragmentShader.Filter c;
  public float d;
  private asu e;
  private SwipeViewState f;
  
  public aqf(asu paramasu, SwipeViewState paramSwipeViewState)
  {
    e = paramasu;
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
    asm localasm1;
    FragmentShader.Filter localFilter;
    if ((a != null) && (e.b() > 0))
    {
      if ((!f.l) || ((e.a(f.a) instanceof asn))) {
        break label184;
      }
      bool = true;
      asm localasm2 = e.a(f.a(bool));
      localasm1 = e.a(f.b(bool));
      localFilter = FragmentShader.Filter.NORMAL;
      if (!(localasm2 instanceof asn)) {
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
      if ((localasm1 instanceof asn)) {
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
 * Qualified Name:     aqf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */