import com.snapchat.android.discover.ui.ChannelView;
import com.snapchat.android.discover.ui.OpenChannelAnimationView;
import com.snapchat.android.discover.ui.OpenChannelAnimationView.a;
import com.snapchat.android.util.eventbus.CameraDisplayState;
import com.squareup.otto.Bus;

final class aeh$1
  implements OpenChannelAnimationView.a
{
  aeh$1(aeh paramaeh) {}
  
  public final void a(ChannelView paramChannelView)
  {
    a.a.postDelayed(new Runnable()
    {
      public final void run()
      {
        aeh.a(a).a(new bdt(true));
        aeh.a(a).a(new bap(CameraDisplayState.SHOW));
      }
    }, 300L);
    a.a.setVisibility(8);
    a.a = null;
  }
}

/* Location:
 * Qualified Name:     aeh.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */