import com.snapchat.android.discover.ui.ChannelView;
import com.snapchat.android.discover.ui.OpenChannelAnimationView;
import com.snapchat.android.discover.ui.OpenChannelAnimationView.a;
import com.snapchat.android.util.eventbus.CameraDisplayState;
import com.squareup.otto.Bus;

final class afh$1
  implements OpenChannelAnimationView.a
{
  afh$1(afh paramafh, OpenChannelAnimationView paramOpenChannelAnimationView) {}
  
  public final void a(ChannelView paramChannelView)
  {
    a.postDelayed(new Runnable()
    {
      public final void run()
      {
        afh.a(b).a(new bet(true));
        afh.a(b).a(new bbq(CameraDisplayState.SHOW));
      }
    }, 300L);
    a.setVisibility(8);
    b.b = null;
  }
}

/* Location:
 * Qualified Name:     afh.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */