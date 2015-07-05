import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.MediaState;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

final class acg$3
  implements adj.b
{
  acg$3(acg paramacg) {}
  
  public final void a(@cgb List<DSnapPage> paramList)
  {
    acg localacg = a;
    Object localObject1 = g;
    Object localObject2 = b;
    if (localObject2 != null) {
      localObject2 = new acg.4(localacg, (DSnapPage)localObject2);
    }
    for (int i = Math.max(0, dj.a(paramList.iterator(), (cl)localObject2));; i = 0)
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
                  alc.a locala = new alc.a();
                  if (f.a((acf)localObject1, (DSnapPage)localObject2, locala)) {}
                  for (boolean bool3 = e.a((acf)localObject1, (DSnapPage)localObject2, locala);; bool3 = false)
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
        a.b();
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
 * Qualified Name:     acg.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */