import android.content.Intent;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.snapchat.android.util.profileimages.ProfileImageUtils;
import com.squareup.otto.Bus;

public final class amu
  extends amd
{
  public final long a;
  public boolean b;
  private final awp c;
  private final ajx d;
  private final Bus e;
  private final ProfileImageUtils f;
  
  public amu(Intent paramIntent)
  {
    this(paramIntent, awq.PROFILE_IMAGE_CACHE, ajx.a(), ban.a(), ProfileImageUtils.a());
  }
  
  private amu(Intent paramIntent, awp paramawp, ajx paramajx, Bus paramBus, ProfileImageUtils paramProfileImageUtils)
  {
    super(paramIntent);
    a = paramIntent.getLongExtra("last_deleted", System.currentTimeMillis());
    c = paramawp;
    d = paramajx;
    e = paramBus;
    f = paramProfileImageUtils;
    b = false;
  }
  
  public final void a(@cgb uc paramuc)
  {
    super.a(paramuc);
    if ((mResponseCode == 404) || (mResponseCode == 200))
    {
      Timber.c("DeleteProfileImagesOperation", "profile images - delete succeeded with timestamp: " + a, new Object[0]);
      b = true;
      ProfileImageUtils.a(a, c);
      ajx.c(a);
      if (a > ajx.z()) {
        ajx.d(true);
      }
      return;
    }
    Timber.f("DeleteProfileImagesOperation", "profile images - delete failed with timestamp %d : %s", new Object[] { Long.valueOf(a), paramuc.e() });
    b = false;
    e.a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493080));
  }
  
  public final Object b()
  {
    return a(new amu.a().a(Long.valueOf(a)));
  }
  
  public final HttpMethod c()
  {
    return HttpMethod.POST;
  }
  
  protected final String e()
  {
    return "/bq/delete_profile_data";
  }
  
  @tn
  public static final class a
    extends bka
  {}
}

/* Location:
 * Qualified Name:     amu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */