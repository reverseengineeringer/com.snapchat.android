import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.MediaState;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

final class adg$3
  implements aej.b
{
  adg$3(adg paramadg) {}
  
  public final void a(@chc List<DSnapPage> paramList)
  {
    adg localadg = a;
    Object localObject1 = g;
    Object localObject2 = b;
    if (localObject2 != null) {
      localObject2 = new adg.4(localadg, (DSnapPage)localObject2);
    }
    for (int i = Math.max(0, ds.a(paramList.iterator(), (cp)localObject2));; i = 0)
    {
      int j = i;
      boolean bool2 = false;
      if (j < paramList.size() + i)
      {
        localObject2 = (DSnapPage)paramList.get(j % paramList.size());
        boolean bool1 = bool2;
        if (((DSnapPage)localObject2).c() != MediaState.SUCCESS)
        {
          if (((DSnapPage)localObject2).c() != MediaState.RESOLVE_NEEDED) {
            break label144;
          }
          bool1 = bool2 | d.a((DSnapPage)localObject2);
        }
        for (;;)
        {
          j += 1;
          bool2 = bool1;
          break;
          label144:
          bool1 = bool2;
          if (((DSnapPage)localObject2).c() == MediaState.NOT_STARTED)
          {
            bool1 = bool2;
            if (((DSnapPage)localObject2).b() != null) {
              if (c.e(((DSnapPage)localObject2).b()))
              {
                bool1 = bool2 | b.a((DSnapPage)localObject2, MediaState.SUCCESS);
              }
              else
              {
                if (c.a())
                {
                  aly.a locala = new aly.a();
                  if (f.a((adf)localObject1, (DSnapPage)localObject2, locala)) {}
                  for (boolean bool3 = e.a((adf)localObject1, (DSnapPage)localObject2, locala);; bool3 = false)
                  {
                    bool1 = bool2 | bool3;
                    break;
                  }
                }
                bool1 = bool2 | b.a((DSnapPage)localObject2, MediaState.EXTERNAL_STORAGE_UNAVAILABLE);
              }
            }
          }
        }
      }
      if (bool2) {
        a.c();
      }
      localObject1 = new HashSet();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        localObject2 = (DSnapPage)paramList.next();
        if (((DSnapPage)localObject2).b() != null) {
          ((Set)localObject1).add(((DSnapPage)localObject2).b());
        }
      }
      c.a((Set)localObject1);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     adg.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */