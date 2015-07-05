import android.content.Context;
import android.content.Intent;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.util.profileimages.ProfileImageUtils;
import java.util.List;

public final class ane
  extends amd
{
  private final ajx a;
  private final ProfileImageUtils b;
  private final awp c;
  private byte[] d;
  
  public ane(Intent paramIntent)
  {
    this(paramIntent, ajx.a(), awq.PROFILE_IMAGE_CACHE, ProfileImageUtils.a());
  }
  
  private ane(Intent paramIntent, ajx paramajx, awp paramawp, ProfileImageUtils paramProfileImageUtils)
  {
    super(paramIntent);
    a = paramajx;
    b = paramProfileImageUtils;
    c = paramawp;
  }
  
  public final void a(Context paramContext)
  {
    try
    {
      List localList = ProfileImageUtils.c(c);
      long l = ajx.z();
      d = ProfileImageUtils.a(localList, l);
      if (d != null)
      {
        Timber.c("UploadProfileImagesOperation", "profile images - attempting uploading with images timestamp: " + l, new Object[0]);
        super.a(paramContext);
      }
      return;
    }
    catch (Exception paramContext)
    {
      Timber.f("UploadProfileImagesOperation", "profile images - exception on serializing profile images into byte array : %s", new Object[] { paramContext });
    }
  }
  
  public final void a(@cgb uc paramuc)
  {
    super.a(paramuc);
    if (paramuc.d())
    {
      Timber.c("UploadProfileImagesOperation", "profile images - upload succeed", new Object[0]);
      ajx.d(true);
      return;
    }
    Timber.f("UploadProfileImagesOperation", "profile images - upload failed : %s", new Object[] { paramuc.e() + " + code: " + mResponseCode });
  }
  
  public final Object b()
  {
    return new ane.a(Long.toString(System.currentTimeMillis()), d);
  }
  
  public final HttpMethod c()
  {
    return HttpMethod.POST;
  }
  
  protected final String e()
  {
    return "/bq/upload_profile_data";
  }
  
  @ty
  public final class a
  {
    @SerializedName("timestamp")
    ul a;
    @SerializedName("req_token")
    ul b;
    @SerializedName("username")
    ul c;
    @SerializedName("data")
    ti d;
    
    a(String paramString, byte[] paramArrayOfByte)
    {
      a = new ul(paramString);
      b = new ul(os.a(paramString));
      c = new ul(ajx.l());
      d = new ti(paramArrayOfByte);
    }
  }
}

/* Location:
 * Qualified Name:     ane
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */