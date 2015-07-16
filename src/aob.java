import android.content.Context;
import android.content.Intent;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.util.profileimages.ProfileImageUtils;

public final class aob
  extends ana
{
  private final akr a;
  private final ProfileImageUtils b;
  private final axn c;
  private byte[] d;
  
  public aob(Intent paramIntent)
  {
    this(paramIntent, akr.a(), axo.PROFILE_IMAGE_CACHE, ProfileImageUtils.a());
  }
  
  private aob(Intent paramIntent, akr paramakr, axn paramaxn, ProfileImageUtils paramProfileImageUtils)
  {
    super(paramIntent);
    a = paramakr;
    b = paramProfileImageUtils;
    c = paramaxn;
  }
  
  public final void a(Context paramContext)
  {
    try
    {
      d = ProfileImageUtils.a(ProfileImageUtils.c(c), akr.z());
      if (d != null) {
        super.a(paramContext);
      }
      return;
    }
    catch (Exception paramContext) {}
  }
  
  public final HttpMethod getMethod()
  {
    return HttpMethod.POST;
  }
  
  public final Object getRequestPayload()
  {
    return new aob.a(Long.toString(System.currentTimeMillis()), d);
  }
  
  protected final String l_()
  {
    return "/bq/upload_profile_data";
  }
  
  public final void onResult(@chc us paramus)
  {
    super.onResult(paramus);
    if (paramus.d())
    {
      akr.d(true);
      return;
    }
    new StringBuilder().append(paramus.e()).append(" + code: ").append(mResponseCode).toString();
  }
  
  @uo
  public final class a
  {
    @SerializedName("timestamp")
    vc a;
    @SerializedName("req_token")
    vc b;
    @SerializedName("username")
    vc c;
    @SerializedName("data")
    ty d;
    
    a(String paramString, byte[] paramArrayOfByte)
    {
      a = new vc(paramString);
      b = new vc(pj.a(paramString));
      c = new vc(akr.l());
      d = new ty(paramArrayOfByte);
    }
  }
}

/* Location:
 * Qualified Name:     aob
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */