import android.view.View;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedFragment.a;
import com.snapchat.android.camera.CameraFragment;
import com.snapchat.android.fragments.chat.ChatFragment;
import com.snapchat.android.fragments.chat.ChatWithFragment;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.util.SnapchatViewPager;
import javax.inject.Provider;

public final class vf
  implements FeedFragment.a
{
  private final LandingPageActivity a;
  private final SnapchatViewPager b;
  private final Provider<ajv> c;
  private final yq d;
  private final atm e;
  private final ni f;
  
  public vf(LandingPageActivity paramLandingPageActivity, SnapchatViewPager paramSnapchatViewPager)
  {
    this(paramLandingPageActivity, paramSnapchatViewPager, ajv.UNSAFE_USER_PROVIDER, yq.a(), atm.a(), ni.a());
  }
  
  private vf(LandingPageActivity paramLandingPageActivity, SnapchatViewPager paramSnapchatViewPager, Provider<ajv> paramProvider, yq paramyq, atm paramatm, ni paramni)
  {
    a = paramLandingPageActivity;
    b = paramSnapchatViewPager;
    c = paramProvider;
    d = paramyq;
    e = paramatm;
    f = paramni;
  }
  
  public final void a()
  {
    bat localbat = new bat();
    a.onCancelReplyEvent(localbat);
    CameraFragment localCameraFragment = (CameraFragment)b.a(2);
    if (localCameraFragment != null) {
      localCameraFragment.onCancelReplyEvent(localbat);
    }
  }
  
  public final void a(ut paramut)
  {
    if ((paramut instanceof ChatConversation))
    {
      paramut = (ChatConversation)paramut;
      if (paramut.A())
      {
        if (paramut.B()) {
          ni.a("feed");
        }
        d.a(paramut);
      }
    }
  }
  
  public final void a(ut paramut, View paramView, boolean paramBoolean)
  {
    if ((paramut instanceof ChatConversation))
    {
      b.setChatFragmentAccessible(true);
      b.onUserSwipedIntoChatEvent(new bes(paramView, paramBoolean));
    }
  }
  
  public final void b()
  {
    a.onStartFragmentEvent(new bdw(new ChatWithFragment()));
  }
  
  public final void b(ut paramut)
  {
    if (((paramut instanceof ChatConversation)) && (!axi.a((ChatConversation)paramut)))
    {
      paramut = new bcz(mTheirUsername, 1, true);
      a.onReplySnapEvent(paramut);
      CameraFragment localCameraFragment = (CameraFragment)b.a(2);
      if (localCameraFragment != null) {
        localCameraFragment.onReplySnapEvent(paramut);
      }
    }
  }
  
  public final void c()
  {
    b.setChatFragmentAccessible(false);
  }
  
  public final void c(ut paramut)
  {
    if ((paramut instanceof ChatConversation))
    {
      ChatFragment localChatFragment = (ChatFragment)b.a(0);
      if (localChatFragment != null) {
        localChatFragment.onChatSwipeStartedEvent(new bay(atm.a(((ChatConversation)paramut).i(), (ajv)c.get())));
      }
    }
  }
  
  public final void d(ut paramut)
  {
    if ((paramut instanceof ChatConversation)) {
      b.onUserFlingedIntoChatEvent(new beq());
    }
  }
}

/* Location:
 * Qualified Name:     vf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */