import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.model.Friend;
import com.snapchat.android.util.profileimages.ProfileImageUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class amv
  extends amd
{
  public final ArrayList<String> a;
  private final String b;
  private final awp c;
  private final ProfileImageUtils d;
  private ajv e;
  
  public amv(Intent paramIntent)
  {
    this(paramIntent, awq.PROFILE_IMAGE_CACHE, ProfileImageUtils.a());
  }
  
  private amv(Intent paramIntent, awp paramawp, ProfileImageUtils paramProfileImageUtils)
  {
    super(paramIntent);
    b = paramIntent.getStringExtra("size");
    a = paramIntent.getStringArrayListExtra("added_friends");
    c = paramawp;
    d = paramProfileImageUtils;
  }
  
  public final void a(Context paramContext)
  {
    if ((!TextUtils.isEmpty(b)) && (a != null) && (a.size() > 0))
    {
      e = ajv.a(paramContext);
      super.a(paramContext);
    }
  }
  
  public final void a(@cgb uc paramuc)
  {
    super.a(paramuc);
    if (!paramuc.d())
    {
      Timber.f("DownloadFriendsProfileImagesOperation", "friends profile images - download returned but did not succeed : friends: %s, result body: %s ", new Object[] { a, paramuc.e() });
      return;
    }
    paramuc = mBuffer;
    if ((paramuc == null) || (paramuc.a() == 0)) {
      Timber.c("DownloadFriendsProfileImagesOperation", "friends profile images - download success but friends %s don't have pics ", new Object[] { a });
    }
    for (;;)
    {
      paramuc = e.q();
      HashSet localHashSet = new HashSet(a);
      Iterator localIterator = paramuc.iterator();
      while (localIterator.hasNext())
      {
        Friend localFriend = (Friend)localIterator.next();
        if (localHashSet.contains(localFriend.h())) {
          mProfileImagesFetched = true;
        }
      }
      paramuc = Arrays.copyOf(paramuc.b(), paramuc.a());
      Timber.c("DownloadFriendsProfileImagesOperation", "friends profile images - download success  byte length: " + paramuc.length, new Object[0]);
      try
      {
        ProfileImageUtils.a(paramuc, c);
      }
      catch (Exception paramuc)
      {
        Timber.f("DownloadFriendsProfileImagesOperation", "friends profile images - deserializing data failed with error: " + paramuc, new Object[0]);
      }
    }
    e.a(paramuc);
  }
  
  public final Object b()
  {
    return a(new amv.a().a(b).a(a));
  }
  
  public final HttpMethod c()
  {
    return HttpMethod.POST;
  }
  
  protected final String e()
  {
    return "/bq/download_friends_profile_data";
  }
  
  @tn
  public static final class a
    extends bkb
  {}
}

/* Location:
 * Qualified Name:     amv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */