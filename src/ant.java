import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.util.profileimages.ProfileImageUtils;
import com.squareup.otto.Bus;
import java.util.Arrays;

public final class ant
  extends ana
{
  private final String a;
  private final String b;
  private final akr c;
  private final axn d;
  private final ProfileImageUtils e;
  
  public ant(Intent paramIntent)
  {
    this(paramIntent, axo.PROFILE_IMAGE_CACHE, akr.a(), ProfileImageUtils.a());
  }
  
  private ant(Intent paramIntent, axn paramaxn, akr paramakr, ProfileImageUtils paramProfileImageUtils)
  {
    super(paramIntent);
    a = paramIntent.getStringExtra("size");
    b = paramIntent.getStringExtra("username_image");
    c = paramakr;
    d = paramaxn;
    e = paramProfileImageUtils;
  }
  
  public final void a(Context paramContext)
  {
    if ((!TextUtils.isEmpty(a)) && (!TextUtils.isEmpty(b))) {
      super.a(paramContext);
    }
  }
  
  public final HttpMethod getMethod()
  {
    return HttpMethod.POST;
  }
  
  public final Object getRequestPayload()
  {
    return buildAuthPayload(new ant.a().a(a).b(b));
  }
  
  protected final String l_()
  {
    return "/bq/download_profile_data";
  }
  
  public final void onResult(@chc us paramus)
  {
    super.onResult(paramus);
    if (mResponseCode == 404)
    {
      akr.e(false);
      return;
    }
    akr.e(true);
    if (!paramus.d())
    {
      paramus.e();
      return;
    }
    paramus = mBuffer;
    if ((paramus == null) || (paramus.a() == 0))
    {
      akr.e(false);
      return;
    }
    try
    {
      ProfileImageUtils.b(Arrays.copyOf(paramus.b(), paramus.a()), d);
      bbo.a().a(new bdq());
      return;
    }
    catch (Exception paramus)
    {
      new StringBuilder("profile images - deserializing data failed with error: ").append(paramus);
    }
  }
  
  @ud
  public static final class a
    extends bld
  {}
}

/* Location:
 * Qualified Name:     ant
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */