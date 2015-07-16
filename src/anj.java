import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.snapchat.android.api2.framework.HttpMethod;
import com.squareup.otto.Bus;
import java.util.Arrays;

public final class anj
  extends ana
{
  private final String a;
  
  public anj(Intent paramIntent)
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
  
  public final HttpMethod getMethod()
  {
    return HttpMethod.POST;
  }
  
  public final Object getRequestPayload()
  {
    return buildAuthPayload(new anj.a().a(a).b("SVG"));
  }
  
  protected final String l_()
  {
    return "/bq/snaptag_download";
  }
  
  public final void onResult(@chc us paramus)
  {
    super.onResult(paramus);
    if (!paramus.d()) {
      new StringBuilder("profile images - failed to download snaptag. ").append(paramus.e());
    }
    paramus = mBuffer;
    if (paramus != null) {}
    try
    {
      paramus = Arrays.copyOf(paramus.b(), paramus.a());
      axo.PROFILE_IMAGE_CACHE.a("snaptag", paramus, paramus.length);
      bbo.a().a(new bes("snaptag"));
      return;
    }
    catch (axq paramus)
    {
      new StringBuilder("Failed to store the downloaded snaptag ").append(paramus);
    }
  }
  
  @ud
  public static final class a
    extends bkd
  {}
}

/* Location:
 * Qualified Name:     anj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */