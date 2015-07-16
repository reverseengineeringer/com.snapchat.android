import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.camera.cameradecor.CameraDecor.CameraDecorInterface;
import com.snapchat.android.fragments.addfriends.FriendsContactsToggleFragment;
import com.squareup.otto.Bus;

public final class wn
  extends wj
{
  private final bdz n;
  private final Bus o;
  
  public wn(Context paramContext, RelativeLayout paramRelativeLayout, CameraDecor.CameraDecorInterface paramCameraDecorInterface, bdz parambdz)
  {
    this(paramContext, paramRelativeLayout, paramCameraDecorInterface, parambdz, bbo.a());
  }
  
  private wn(Context paramContext, RelativeLayout paramRelativeLayout, CameraDecor.CameraDecorInterface paramCameraDecorInterface, bdz parambdz, Bus paramBus)
  {
    super(paramContext, paramRelativeLayout, paramCameraDecorInterface);
    n = parambdz;
    o = paramBus;
    f.setVisibility(4);
    g.setVisibility(4);
    switch (n.mOriginatingFragment)
    {
    }
    for (;;)
    {
      a();
      return;
      f.setBackgroundResource(2130837537);
      f.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          a.a(1, true);
        }
      });
      f.setVisibility(0);
      continue;
      g.setBackgroundResource(2130837527);
      g.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          a.a(3, true);
        }
      });
      g.setVisibility(0);
      continue;
      g.setBackgroundResource(2130837527);
      g.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          wn.a(wn.this);
        }
      });
      g.setVisibility(0);
    }
  }
  
  private void i()
  {
    FriendsContactsToggleFragment localFriendsContactsToggleFragment = new FriendsContactsToggleFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("selected_friend_username", n.mRecipients);
    localFriendsContactsToggleFragment.setArguments(localBundle);
    o.a(new bev(localFriendsContactsToggleFragment));
    o.a(new bbu());
    o.a(new bdr(0));
  }
  
  public final void b() {}
  
  public final void c() {}
  
  protected final void c(boolean paramBoolean)
  {
    super.c(paramBoolean);
    if ((paramBoolean) && (n != null)) {}
    switch (n.mOriginatingFragment)
    {
    default: 
      return;
    case 1: 
      g.setVisibility(4);
      return;
    }
    f.setVisibility(4);
  }
  
  public final boolean f()
  {
    int i = n.mOriginatingFragment;
    switch (i)
    {
    default: 
      a.a(i, true);
    }
    for (;;)
    {
      if (n.mIsDoubleTap) {
        AnalyticsEvents.j(false);
      }
      return true;
      i();
    }
  }
  
  protected final boolean h()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     wn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */