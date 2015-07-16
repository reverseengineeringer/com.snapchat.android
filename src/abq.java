import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.snapchat.android.database.table.StorySnapTable;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StorySnapLogbook;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.Lock;

public final class abq
  extends StorySnapTable
{
  private static abq a;
  private final acb b;
  
  private abq()
  {
    this(new ayv(), akr.a(), acb.a());
  }
  
  private abq(ayv paramayv, akr paramakr, acb paramacb)
  {
    super(paramakr, paramayv, azh.MY_STORY_KEYS_AND_IVS);
    b = paramacb;
  }
  
  public static abq a()
  {
    try
    {
      if (a == null) {
        a = new abq();
      }
      abq localabq = a;
      return localabq;
    }
    finally {}
  }
  
  protected final Collection<akl> a(akp paramakp)
  {
    return null;
  }
  
  protected final void a(List<akl> arg1)
  {
    Map localMap = acb.a(mDatabase);
    akk localakk = akk.a();
    akl localakl;
    String str;
    StoryGroup localStoryGroup;
    label146:
    Object localObject1;
    for (;;)
    {
      synchronized (mMyPostedStorySnapLogbooksForDatabase)
      {
        mMyPostedStorySnapLogbooksForDatabase.clear();
        Iterator localIterator1 = ???.iterator();
        if (!localIterator1.hasNext()) {
          break;
        }
        localakl = (akl)localIterator1.next();
        if (localakl.ay()) {
          localakl.toString();
        }
      }
      str = mStoryId;
      if (str != null)
      {
        localStoryGroup = (StoryGroup)mStories.get(str);
        if (localStoryGroup != null) {
          break label410;
        }
        localStoryGroup = new StoryGroup(str);
        mStories.put(str, localStoryGroup);
        ??? = (Map)localMap.get(str);
        if (??? == null) {
          break label403;
        }
        localObject1 = (List)???.get(localakl.d());
        if (localObject1 == null) {
          break label398;
        }
        ??? = new bki();
        if (((List)localObject1).isEmpty()) {
          break label413;
        }
        ???.a(Integer.valueOf(((List)localObject1).size()));
        Iterator localIterator2 = ((List)localObject1).iterator();
        while (localIterator2.hasNext()) {
          if (((bkk)localIterator2.next()).b().booleanValue()) {
            ???.b(Integer.valueOf(avb.a(???.b()) + 1));
          }
        }
      }
    }
    label398:
    label403:
    label410:
    label413:
    for (;;)
    {
      ??? = new StorySnapLogbook(localakl, (List)localObject1, ???);
      mStoryId = str;
      localStoryGroup.h().add(???);
      localakk.a(???);
      break;
      for (;;)
      {
        synchronized (mStories)
        {
          localObject1 = mStories.values().iterator();
          if (!((Iterator)localObject1).hasNext()) {
            break;
          }
          localStoryGroup = (StoryGroup)((Iterator)localObject1).next();
          if ((!(localStoryGroup instanceof ajx)) && (localStoryGroup.k() == 0)) {
            ((Iterator)localObject1).remove();
          }
        }
        Collections.sort(localStoryGroup.h());
      }
      localakk.j();
      return;
      ??? = null;
      continue;
      ??? = null;
      Object localObject3 = null;
      continue;
      break label146;
    }
  }
  
  public final String c()
  {
    return "MyPostedStorySnapTable";
  }
  
  public final void c(akp paramakp)
  {
    if (m() == null) {
      return;
    }
    i().lock();
    Object localObject1;
    Object localObject2;
    try
    {
      mDatabase.beginTransaction();
      paramakp = akk.a().g();
      localObject1 = new ArrayList();
      localObject2 = paramakp.iterator();
      while (((Iterator)localObject2).hasNext())
      {
        akl localakl = nextmStorySnap;
        if (localakl != null) {
          ((List)localObject1).add(localakl);
        }
      }
      new ayv().a((List)localObject1, azh.MY_STORY_KEYS_AND_IVS);
    }
    finally
    {
      mDatabase.endTransaction();
      i().unlock();
    }
    j();
    if (!((List)localObject1).isEmpty())
    {
      new StringBuilder("saveToDatabase MyPostedStorySnapTable ").append(((List)localObject1).size()).append(" item(s)");
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = a((akl)((Iterator)localObject1).next());
        if ((localObject2 != null) && (((ContentValues)localObject2).size() > 0)) {
          mDatabase.insert("MyPostedStorySnapTable", null, (ContentValues)localObject2);
        }
      }
    }
    acb.a().a(mDatabase, paramakp);
    mDatabase.setTransactionSuccessful();
    mDatabase.endTransaction();
    i().unlock();
  }
}

/* Location:
 * Qualified Name:     abq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */