import android.view.View;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedFragment.a;
import com.snapchat.android.camera.CameraFragment;
import com.snapchat.android.fragments.chat.ChatFragment;
import com.snapchat.android.fragments.chat.ChatWithFragment;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.ui.SnapView;
import com.snapchat.android.util.SnapchatViewPager;
import java.util.Set;
import javax.inject.Provider;

public final class wb
  implements FeedFragment.a
{
  private final LandingPageActivity a;
  private final SnapchatViewPager b;
  private final SnapView c;
  private final Provider<akp> d;
  private final zm e;
  private final auk f;
  private final nz g;
  
  public wb(LandingPageActivity paramLandingPageActivity, SnapchatViewPager paramSnapchatViewPager, SnapView paramSnapView)
  {
    this(paramLandingPageActivity, paramSnapchatViewPager, paramSnapView, akp.UNSAFE_USER_PROVIDER, zm.a(), auk.a(), nz.a());
  }
  
  private wb(LandingPageActivity paramLandingPageActivity, SnapchatViewPager paramSnapchatViewPager, SnapView paramSnapView, Provider<akp> paramProvider, zm paramzm, auk paramauk, nz paramnz)
  {
    a = paramLandingPageActivity;
    b = paramSnapchatViewPager;
    c = paramSnapView;
    d = paramProvider;
    e = paramzm;
    f = paramauk;
    g = paramnz;
  }
  
  public final void a()
  {
    bbu localbbu = new bbu();
    a.onCancelReplyEvent(localbbu);
    CameraFragment localCameraFragment = (CameraFragment)b.a(2);
    if (localCameraFragment != null) {
      localCameraFragment.onCancelReplyEvent(localbbu);
    }
  }
  
  public final void a(vp paramvp)
  {
    if ((paramvp instanceof ChatConversation))
    {
      paramvp = (ChatConversation)paramvp;
      if (paramvp.B()) {
        if ((mFailedSnaps == null) || (mFailedSnaps.isEmpty())) {
          break label58;
        }
      }
    }
    label58:
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        nz.a("feed");
      }
      e.a(paramvp);
      return;
    }
  }
  
  public final void a(vp paramvp, View paramView, boolean paramBoolean)
  {
    if ((paramvp instanceof ChatConversation))
    {
      b.setChatFragmentAccessible(true);
      b.onUserSwipedIntoChatEvent(new bfr(paramView, paramBoolean));
    }
  }
  
  public final void b()
  {
    a.onStartFragmentEvent(new bev(new ChatWithFragment()));
  }
  
  public final void b(vp paramvp)
  {
    if (((paramvp instanceof ChatConversation)) && (!c.b()) && (!ayg.a((ChatConversation)paramvp)))
    {
      paramvp = new bdz(mTheirUsername, 1, true);
      a.onReplySnapEvent(paramvp);
      CameraFragment localCameraFragment = (CameraFragment)b.a(2);
      if (localCameraFragment != null) {
        localCameraFragment.onReplySnapEvent(paramvp);
      }
    }
  }
  
  public final void c()
  {
    b.setChatFragmentAccessible(false);
  }
  
  public final void c(vp paramvp)
  {
    if ((paramvp instanceof ChatConversation))
    {
      ChatFragment localChatFragment = (ChatFragment)b.a(0);
      if (localChatFragment != null) {
        localChatFragment.onChatSwipeStartedEvent(new bbz(auk.a(((ChatConversation)paramvp).i(), (akp)d.get())));
      }
    }
  }
  
  public final void d(vp paramvp)
  {
    if ((paramvp instanceof ChatConversation)) {
      b.onUserFlingedIntoChatEvent(new bfp());
    }
  }
}

/* Location:
 * Qualified Name:     wb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */