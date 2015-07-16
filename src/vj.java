import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import com.snapchat.android.database.SharedPreferenceKey;
import java.util.List;
import javax.inject.Provider;

public final class vj
  extends vm<bid>
  implements vh.a
{
  private final SharedPreferences c;
  private final Provider<akp> d = akp.UNSAFE_USER_PROVIDER;
  private akp e;
  private boolean f = false;
  
  public vj(Context paramContext, vl<bid> paramvl, vm.a parama)
  {
    super(paramvl, parama);
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
    akp localakp = (akp)d.get();
    if (e == localakp)
    {
      f = false;
      b.d_();
    }
  }
  
  public final void a(List<bid> paramList)
  {
    akp localakp = (akp)d.get();
    if (e == localakp)
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
      a(((bid)paramList.get(paramList.size() - 1)).m());
      a.a(paramList);
      b.c_();
    }
  }
  
  public final void b()
  {
    if (f) {
      return;
    }
    f = true;
    b.b_();
    e = ((akp)d.get());
    String str = c.getString(SharedPreferenceKey.CONVERSATIONS_ITER_TOKEN.getKey(), null);
    if (str == null)
    {
      f = false;
      b.d();
      return;
    }
    new vh(str, this).execute();
  }
  
  public final boolean c()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     vj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */