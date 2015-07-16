import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.snapchat.android.database.schema.StorySnapNoteSchema;
import com.snapchat.android.database.table.DbTable;
import com.snapchat.android.model.StorySnapLogbook;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class acb
  extends DbTable<bkk>
{
  public static final String[] a;
  private static acb b;
  
  static
  {
    StorySnapNoteSchema[] arrayOfStorySnapNoteSchema = StorySnapNoteSchema.values();
    int j = arrayOfStorySnapNoteSchema.length;
    a = new String[j];
    int i = 0;
    while (i < j)
    {
      a[i] = arrayOfStorySnapNoteSchema[i].getColumnName();
      i += 1;
    }
  }
  
  public static acb a()
  {
    try
    {
      if (b == null) {
        b = new acb();
      }
      acb localacb = b;
      return localacb;
    }
    finally {}
  }
  
  @chc
  public static Map<String, Map<String, List<bkk>>> a(@chc SQLiteDatabase paramSQLiteDatabase)
  {
    HashMap localHashMap = new HashMap();
    Cursor localCursor = paramSQLiteDatabase.query("StorySnapNote", a, null, null, null, null, StorySnapNoteSchema.TIMESTAMP.getColumnName() + " DESC");
    if (localCursor != null) {}
    label413:
    label419:
    for (;;)
    {
      try
      {
        if (localCursor.moveToFirst())
        {
          String str1 = localCursor.getString(StorySnapNoteSchema.STORY_SNAP_ID.getColumnNumber());
          localObject = localCursor.getString(StorySnapNoteSchema.STORY_ID.getColumnNumber());
          if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty((CharSequence)localObject)))
          {
            paramSQLiteDatabase = (Map)localHashMap.get(localObject);
            if (paramSQLiteDatabase != null) {
              break label419;
            }
            paramSQLiteDatabase = new HashMap();
            localHashMap.put(localObject, paramSQLiteDatabase);
            localObject = (List)paramSQLiteDatabase.get(str1);
            if (localObject != null) {
              break label413;
            }
            localObject = new ArrayList();
            paramSQLiteDatabase.put(str1, localObject);
            paramSQLiteDatabase = (SQLiteDatabase)localObject;
            str1 = localCursor.getString(StorySnapNoteSchema.VIEWER.getColumnNumber());
            if (localCursor.getInt(StorySnapNoteSchema.SCREENSHOTTED.getColumnNumber()) == 1)
            {
              bool = true;
              long l = localCursor.getLong(StorySnapNoteSchema.TIMESTAMP.getColumnNumber());
              String str2 = localCursor.getString(StorySnapNoteSchema.STORY_POINTER_KEY.getColumnNumber());
              String str3 = localCursor.getString(StorySnapNoteSchema.STORY_POINTER_FIELD.getColumnNumber());
              if ((TextUtils.isEmpty(str2)) || (TextUtils.isEmpty(str3))) {
                continue;
              }
              localObject = new bkl();
              ((bkl)localObject).a(str2);
              ((bkl)localObject).b(str3);
              localObject = new bkk().a(str1).a(Boolean.valueOf(bool)).a(Long.valueOf(l)).a((bkl)localObject);
              new StringBuilder("Load snap note ").append(localObject);
              paramSQLiteDatabase.add(localObject);
            }
          }
          else
          {
            bool = localCursor.moveToNext();
            if (bool) {
              continue;
            }
          }
        }
        else
        {
          return localHashMap;
        }
        boolean bool = false;
        continue;
        Object localObject = null;
        continue;
        paramSQLiteDatabase = (SQLiteDatabase)localObject;
      }
      finally
      {
        if (localCursor != null) {
          localCursor.close();
        }
      }
    }
  }
  
  protected final Collection<bkk> a(akp paramakp)
  {
    return null;
  }
  
  public final void a(@chc SQLiteDatabase paramSQLiteDatabase, List<StorySnapLogbook> paramList)
  {
    paramSQLiteDatabase.delete(c(), null, null);
    Iterator localIterator1 = paramList.iterator();
    for (;;)
    {
      if (localIterator1.hasNext())
      {
        paramList = (StorySnapLogbook)localIterator1.next();
        akl localakl = mStorySnap;
        paramList = mStorySnapNotes;
        if (paramList != null)
        {
          Iterator localIterator2 = paramList.iterator();
          bkk localbkk;
          String str;
          while (localIterator2.hasNext())
          {
            localbkk = (bkk)localIterator2.next();
            str = localakl.d();
            if (!TextUtils.isEmpty(str)) {
              break label133;
            }
            paramList = null;
            label102:
            if (paramList == null) {
              break label251;
            }
            new StringBuilder("Save note into DB: ").append(paramList);
            paramSQLiteDatabase.insertWithOnConflict("StorySnapNote", null, paramList, 5);
          }
          continue;
          label133:
          Object localObject = mStoryId;
          paramList = (List<StorySnapLogbook>)localObject;
          if (TextUtils.isEmpty((CharSequence)localObject)) {
            paramList = "my_story_ads79sdf";
          }
          paramList = new abc().a(StorySnapNoteSchema.STORY_SNAP_ID, str).a(StorySnapNoteSchema.STORY_ID, paramList).a(StorySnapNoteSchema.VIEWER, localbkk.a()).a(StorySnapNoteSchema.SCREENSHOTTED, avb.a(localbkk.b())).a(StorySnapNoteSchema.TIMESTAMP, avb.a(localbkk.c()));
          localObject = localbkk.d();
          if (localObject == null) {
            break label254;
          }
          paramList = paramList.a(StorySnapNoteSchema.STORY_POINTER_KEY, ((bkl)localObject).a()).a(StorySnapNoteSchema.STORY_POINTER_FIELD, ((bkl)localObject).b());
        }
      }
    }
    label251:
    label254:
    for (;;)
    {
      paramList = a;
      break label102;
      break;
      return;
    }
  }
  
  public final void b(akp paramakp) {}
  
  public final aav[] b()
  {
    return StorySnapNoteSchema.values();
  }
  
  public final String c()
  {
    return "StorySnapNote";
  }
  
  public final boolean e()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     acb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */