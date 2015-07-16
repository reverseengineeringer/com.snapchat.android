import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.model.Friend;
import com.snapchat.android.util.profileimages.ProfileImageUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class ans
  extends ana
{
  public final ArrayList<String> a;
  private final String b;
  private final axn c;
  private final ProfileImageUtils d;
  private akp e;
  
  public ans(Intent paramIntent)
  {
    this(paramIntent, axo.PROFILE_IMAGE_CACHE, ProfileImageUtils.a());
  }
  
  private ans(Intent paramIntent, axn paramaxn, ProfileImageUtils paramProfileImageUtils)
  {
    super(paramIntent);
    b = paramIntent.getStringExtra("size");
    a = paramIntent.getStringArrayListExtra("added_friends");
    c = paramaxn;
    d = paramProfileImageUtils;
  }
  
  public final void a(Context paramContext)
  {
    if ((!TextUtils.isEmpty(b)) && (a != null) && (a.size() > 0))
    {
      e = akp.a(paramContext);
      super.a(paramContext);
    }
  }
  
  public final HttpMethod getMethod()
  {
    return HttpMethod.POST;
  }
  
  public final Object getRequestPayload()
  {
    return buildAuthPayload(new ans.a().a(b).a(a));
  }
  
  protected final String l_()
  {
    return "/bq/download_friends_profile_data";
  }
  
  public final void onResult(@chc us paramus)
  {
    super.onResult(paramus);
    Object localObject;
    if (!paramus.d())
    {
      localObject = a;
      paramus.e();
      return;
    }
    paramus = mBuffer;
    if ((paramus == null) || (paramus.a() == 0)) {
      paramus = a;
    }
    for (;;)
    {
      paramus = e.q();
      localObject = new HashSet(a);
      Iterator localIterator = paramus.iterator();
      while (localIterator.hasNext())
      {
        Friend localFriend = (Friend)localIterator.next();
        if (((Set)localObject).contains(localFriend.l())) {
          mProfileImagesFetched = true;
        }
      }
      paramus = Arrays.copyOf(paramus.b(), paramus.a());
      new StringBuilder("friends profile images - download success  byte length: ").append(paramus.length);
      try
      {
        ProfileImageUtils.a(paramus, c);
      }
      catch (Exception paramus)
      {
        new StringBuilder("friends profile images - deserializing data failed with error: ").append(paramus);
      }
    }
    e.a(paramus);
  }
  
  @ud
  public static final class a
    extends blc
  {}
}

/* Location:
 * Qualified Name:     ans
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */