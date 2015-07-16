import android.content.Intent;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.snapchat.android.util.profileimages.ProfileImageUtils;
import com.squareup.otto.Bus;

public final class anr
  extends ana
{
  public final long a;
  public boolean b;
  private final axn c;
  private final akr d;
  private final Bus e;
  private final ProfileImageUtils f;
  
  public anr(Intent paramIntent)
  {
    this(paramIntent, axo.PROFILE_IMAGE_CACHE, akr.a(), bbo.a(), ProfileImageUtils.a());
  }
  
  private anr(Intent paramIntent, axn paramaxn, akr paramakr, Bus paramBus, ProfileImageUtils paramProfileImageUtils)
  {
    super(paramIntent);
    a = paramIntent.getLongExtra("last_deleted", System.currentTimeMillis());
    c = paramaxn;
    d = paramakr;
    e = paramBus;
    f = paramProfileImageUtils;
    b = false;
  }
  
  public final HttpMethod getMethod()
  {
    return HttpMethod.POST;
  }
  
  public final Object getRequestPayload()
  {
    return buildAuthPayload(new anr.a().a(Long.valueOf(a)));
  }
  
  protected final String l_()
  {
    return "/bq/delete_profile_data";
  }
  
  public final void onResult(@chc us paramus)
  {
    super.onResult(paramus);
    if ((mResponseCode == 404) || (mResponseCode == 200))
    {
      new StringBuilder("profile images - delete succeeded with timestamp: ").append(a);
      b = true;
      ProfileImageUtils.a(a, c);
      akr.c(a);
      if (a > akr.z()) {
        akr.d(true);
      }
      return;
    }
    long l = a;
    paramus.e();
    b = false;
    e.a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493080));
  }
  
  @ud
  public static final class a
    extends blb
  {}
}

/* Location:
 * Qualified Name:     anr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */