import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.snapchat.android.Timber;
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

public final class aar
  extends StorySnapTable
{
  private static aar a;
  private final abc b;
  
  private aar()
  {
    this(new axx(), ajx.a(), abc.a());
  }
  
  private aar(axx paramaxx, ajx paramajx, abc paramabc)
  {
    super(paramajx, paramaxx, ayj.MY_STORY_KEYS_AND_IVS);
    b = paramabc;
  }
  
  public static aar a()
  {
    try
    {
      if (a == null) {
        a = new aar();
      }
      aar localaar = a;
      return localaar;
    }
    finally {}
  }
  
  protected final Collection<ajr> a(ajv paramajv)
  {
    return null;
  }
  
  protected final void a(List<ajr> arg1)
  {
    Map localMap = abc.a(mDatabase);
    ajq localajq = ajq.a();
    ajr localajr;
    String str;
    StoryGroup localStoryGroup;
    label175:
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
        localajr = (ajr)localIterator1.next();
        if (localajr.aD()) {
          Timber.c("StoryLibrary", "Not loading expired StorySnap from database %s", new Object[] { localajr.toString() });
        }
      }
      str = mStoryId;
      if (str == null)
      {
        Timber.f("StoryLibrary", "Corrupted data. Story Snap should always have a story ID %s", new Object[] { localajr });
      }
      else
      {
        localStoryGroup = (StoryGroup)mStories.get(str);
        if (localStoryGroup != null) {
          break label439;
        }
        localStoryGroup = new StoryGroup(str);
        mStories.put(str, localStoryGroup);
        ??? = (Map)localMap.get(str);
        if (??? == null) {
          break label432;
        }
        localObject1 = (List)???.get(localajr.d());
        if (localObject1 == null) {
          break label427;
        }
        ??? = new bjh();
        if (((List)localObject1).isEmpty()) {
          break label442;
        }
        ???.a(Integer.valueOf(((List)localObject1).size()));
        Iterator localIterator2 = ((List)localObject1).iterator();
        while (localIterator2.hasNext()) {
          if (((bjj)localIterator2.next()).b().booleanValue()) {
            ???.b(Integer.valueOf(aud.a(???.b()) + 1));
          }
        }
      }
    }
    label427:
    label432:
    label439:
    label442:
    for (;;)
    {
      ??? = new StorySnapLogbook(localajr, (List)localObject1, ???);
      mStoryId = str;
      localStoryGroup.h().add(???);
      localajq.a(???);
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
          if ((!(localStoryGroup instanceof ajb)) && (localStoryGroup.k() == 0)) {
            ((Iterator)localObject1).remove();
          }
        }
        Collections.sort(localStoryGroup.h());
      }
      localajq.j();
      return;
      ??? = null;
      continue;
      ??? = null;
      Object localObject3 = null;
      continue;
      break label175;
    }
  }
  
  public final String c()
  {
    return "MyPostedStorySnapTable";
  }
  
  public final void c(ajv paramajv)
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
      paramajv = ajq.a().g();
      localObject1 = new ArrayList();
      localObject2 = paramajv.iterator();
      while (((Iterator)localObject2).hasNext())
      {
        ajr localajr = nextmStorySnap;
        if (localajr != null) {
          ((List)localObject1).add(localajr);
        }
      }
      new axx().a((List)localObject1, ayj.MY_STORY_KEYS_AND_IVS);
    }
    finally
    {
      mDatabase.endTransaction();
      i().unlock();
    }
    j();
    if (!((List)localObject1).isEmpty())
    {
      Timber.c("MyPostedStorySnapTable", "saveToDatabase MyPostedStorySnapTable " + ((List)localObject1).size() + " item(s)", new Object[0]);
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = a((ajr)((Iterator)localObject1).next());
        if ((localObject2 != null) && (((ContentValues)localObject2).size() > 0)) {
          mDatabase.insert("MyPostedStorySnapTable", null, (ContentValues)localObject2);
        }
      }
    }
    abc.a().a(mDatabase, paramajv);
    mDatabase.setTransactionSuccessful();
    mDatabase.endTransaction();
    i().unlock();
  }
}

/* Location:
 * Qualified Name:     aar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */