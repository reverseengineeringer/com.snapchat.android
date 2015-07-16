import android.text.TextUtils;
import com.snapchat.android.model.StoryCollection;

public final class avy
{
  public static void a(@chd akp paramakp, @chd akl paramakl, boolean paramBoolean)
  {
    if ((paramakp == null) || (paramakl == null)) {}
    label80:
    for (;;)
    {
      return;
      if (TextUtils.equals(akr.l(), mUsername)) {}
      for (paramakp = akk.a().a("my_story_ads79sdf");; paramakp = akk.a().b(mUsername))
      {
        if (paramakp == null) {
          break label80;
        }
        paramakl = paramakp.b(paramakl.d());
        if (paramakl == null) {
          break;
        }
        paramakl.d(0);
        paramakl.D();
        paramakp.f(paramakl);
        paramakl.e(paramBoolean);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     avy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */