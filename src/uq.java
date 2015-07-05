import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import com.snapchat.android.database.SharedPreferenceKey;
import java.util.List;
import javax.inject.Provider;

public final class uq
  extends us<bhd>
  implements up.a
{
  private final SharedPreferences c;
  private final Provider<ajv> d = ajv.UNSAFE_USER_PROVIDER;
  private ajv e;
  private boolean f = false;
  
  public uq(Context paramContext, ur<bhd> paramur, us.a parama)
  {
    super(paramur, parama);
    c = PreferenceManager.getDefaultSharedPreferences(paramContext);
  }
  
  private void a(String paramString)
  {
    SharedPreferences.Editor localEditor = c.edit();
    if (paramString != null) {
      localEditor.putString(SharedPreferenceKey.CONVERSATIONS_ITER_TOKEN.getKey(), paramString);
    }
    for (;;)
    {
      localEditor.apply();
      return;
      localEditor.remove(SharedPreferenceKey.CONVERSATIONS_ITER_TOKEN.getKey());
    }
  }
  
  public final void a()
  {
    ajv localajv = (ajv)d.get();
    if (e == localajv)
    {
      f = false;
      b.e_();
    }
  }
  
  public final void a(List<bhd> paramList)
  {
    ajv localajv = (ajv)d.get();
    if (e == localajv)
    {
      f = false;
      if (paramList != null)
      {
        if (!paramList.isEmpty()) {
          break label62;
        }
        a(null);
        b.d();
      }
    }
    for (;;)
    {
      e.a(null);
      return;
      label62:
      a(((bhd)paramList.get(paramList.size() - 1)).m());
      a.a(paramList);
      b.d_();
    }
  }
  
  public final void b()
  {
    if (f) {
      return;
    }
    f = true;
    b.c_();
    e = ((ajv)d.get());
    String str = c.getString(SharedPreferenceKey.CONVERSATIONS_ITER_TOKEN.getKey(), null);
    if (str == null)
    {
      f = false;
      b.d();
      return;
    }
    new up(str, this).f();
  }
  
  public final boolean c()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     uq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */