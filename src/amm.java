import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.HttpMethod;
import com.squareup.otto.Bus;
import java.util.Arrays;

public final class amm
  extends amd
{
  private final String a;
  
  public amm(Intent paramIntent)
  {
    super(paramIntent);
    a = paramIntent.getStringExtra("ImageId");
  }
  
  public final void a(Context paramContext)
  {
    if (!TextUtils.isEmpty(a)) {
      super.a(paramContext);
    }
  }
  
  public final void a(@cgb uc paramuc)
  {
    super.a(paramuc);
    if (!paramuc.d()) {
      Timber.f("SnapTagDownloadOperation", "profile images - failed to download snaptag. " + paramuc.e(), new Object[0]);
    }
    paramuc = mBuffer;
    if (paramuc != null) {}
    try
    {
      paramuc = Arrays.copyOf(paramuc.b(), paramuc.a());
      awq.PROFILE_IMAGE_CACHE.a("snaptag", paramuc, paramuc.length);
      ban.a().a(new bds("snaptag"));
      return;
    }
    catch (aws paramuc)
    {
      Timber.f("SnapTagDownloadOperation", "Failed to store the downloaded snaptag " + paramuc, new Object[0]);
    }
  }
  
  public final Object b()
  {
    return a(new amm.a().a(a).b("SVG"));
  }
  
  public final HttpMethod c()
  {
    return HttpMethod.POST;
  }
  
  protected final String e()
  {
    return "/bq/snaptag_download";
  }
  
  @tn
  public static final class a
    extends bjc
  {}
}

/* Location:
 * Qualified Name:     amm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */