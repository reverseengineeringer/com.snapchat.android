import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.util.profileimages.ProfileImageUtils;
import com.squareup.otto.Bus;
import java.util.Arrays;

public final class amw
  extends amd
{
  private final String a;
  private final String b;
  private final ajx c;
  private final awp d;
  private final ProfileImageUtils e;
  
  public amw(Intent paramIntent)
  {
    this(paramIntent, awq.PROFILE_IMAGE_CACHE, ajx.a(), ProfileImageUtils.a());
  }
  
  private amw(Intent paramIntent, awp paramawp, ajx paramajx, ProfileImageUtils paramProfileImageUtils)
  {
    super(paramIntent);
    a = paramIntent.getStringExtra("size");
    b = paramIntent.getStringExtra("username_image");
    c = paramajx;
    d = paramawp;
    e = paramProfileImageUtils;
  }
  
  public final void a(Context paramContext)
  {
    if ((!TextUtils.isEmpty(a)) && (!TextUtils.isEmpty(b))) {
      super.a(paramContext);
    }
  }
  
  public final void a(@cgb uc paramuc)
  {
    super.a(paramuc);
    if (mResponseCode == 404)
    {
      Timber.c("DownloadProfileImagesOperation", "profile images - download returned but user hasn't uplaoded pics before", new Object[0]);
      ajx.e(false);
      return;
    }
    ajx.e(true);
    if (!paramuc.d())
    {
      Timber.f("DownloadProfileImagesOperation", "profile images - download returned but did not succeed : %s ", new Object[] { paramuc.e() });
      return;
    }
    paramuc = mBuffer;
    if ((paramuc == null) || (paramuc.a() == 0))
    {
      Timber.c("DownloadProfileImagesOperation", "profile images - download returned but user hasn't uploaded pics before", new Object[0]);
      ajx.e(false);
      return;
    }
    Timber.c("DownloadProfileImagesOperation", "profile images - download success", new Object[0]);
    try
    {
      ProfileImageUtils.b(Arrays.copyOf(paramuc.b(), paramuc.a()), d);
      ban.a().a(new bcq());
      return;
    }
    catch (Exception paramuc)
    {
      Timber.f("DownloadProfileImagesOperation", "profile images - deserializing data failed with error: " + paramuc, new Object[0]);
    }
  }
  
  public final Object b()
  {
    return a(new amw.a().a(a).b(b));
  }
  
  public final HttpMethod c()
  {
    return HttpMethod.POST;
  }
  
  protected final String e()
  {
    return "/bq/download_profile_data";
  }
  
  @tn
  public static final class a
    extends bkc
  {}
}

/* Location:
 * Qualified Name:     amw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */