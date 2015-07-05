import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.database.schema.StorySnapNoteSchema;
import com.snapchat.android.database.table.DbTable;
import com.snapchat.android.model.StorySnapLogbook;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class abc
  extends DbTable<bjj>
{
  public static final String[] a;
  private static abc b;
  
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
  
  public static abc a()
  {
    try
    {
      if (b == null) {
        b = new abc();
      }
      abc localabc = b;
      return localabc;
    }
    finally {}
  }
  
  @cgb
  public static Map<String, Map<String, List<bjj>>> a(@cgb SQLiteDatabase paramSQLiteDatabase)
  {
    HashMap localHashMap = new HashMap();
    Cursor localCursor = paramSQLiteDatabase.query("StorySnapNote", a, null, null, null, null, StorySnapNoteSchema.TIMESTAMP.getColumnName() + " DESC");
    if (localCursor != null) {}
    label424:
    label430:
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
              break label430;
            }
            paramSQLiteDatabase = new HashMap();
            localHashMap.put(localObject, paramSQLiteDatabase);
            localObject = (List)paramSQLiteDatabase.get(str1);
            if (localObject != null) {
              break label424;
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
              localObject = new bjk();
              ((bjk)localObject).a(str2);
              ((bjk)localObject).b(str3);
              localObject = new bjj().a(str1).a(Boolean.valueOf(bool)).a(Long.valueOf(l)).a((bjk)localObject);
              Timber.c("StorySnapNoteTable", "Load snap note " + localObject, new Object[0]);
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
  
  protected final Collection<bjj> a(ajv paramajv)
  {
    return null;
  }
  
  public final void a(@cgb SQLiteDatabase paramSQLiteDatabase, List<StorySnapLogbook> paramList)
  {
    paramSQLiteDatabase.delete(c(), null, null);
    Iterator localIterator1 = paramList.iterator();
    for (;;)
    {
      if (localIterator1.hasNext())
      {
        paramList = (StorySnapLogbook)localIterator1.next();
        ajr localajr = mStorySnap;
        paramList = mStorySnapNotes;
        if (paramList != null)
        {
          Iterator localIterator2 = paramList.iterator();
          bjj localbjj;
          String str;
          while (localIterator2.hasNext())
          {
            localbjj = (bjj)localIterator2.next();
            str = localajr.d();
            if (!TextUtils.isEmpty(str)) {
              break label144;
            }
            paramList = null;
            label102:
            if (paramList == null) {
              break label262;
            }
            Timber.c("StorySnapNoteTable", "Save note into DB: " + paramList, new Object[0]);
            paramSQLiteDatabase.insertWithOnConflict("StorySnapNote", null, paramList, 5);
          }
          continue;
          label144:
          Object localObject = mStoryId;
          paramList = (List<StorySnapLogbook>)localObject;
          if (TextUtils.isEmpty((CharSequence)localObject)) {
            paramList = "my_story_ads79sdf";
          }
          paramList = new aad().a(StorySnapNoteSchema.STORY_SNAP_ID, str).a(StorySnapNoteSchema.STORY_ID, paramList).a(StorySnapNoteSchema.VIEWER, localbjj.a()).a(StorySnapNoteSchema.SCREENSHOTTED, aud.a(localbjj.b())).a(StorySnapNoteSchema.TIMESTAMP, aud.a(localbjj.c()));
          localObject = localbjj.d();
          if (localObject == null) {
            break label265;
          }
          paramList = paramList.a(StorySnapNoteSchema.STORY_POINTER_KEY, ((bjk)localObject).a()).a(StorySnapNoteSchema.STORY_POINTER_FIELD, ((bjk)localObject).b());
        }
      }
    }
    label262:
    label265:
    for (;;)
    {
      paramList = a;
      break label102;
      break;
      return;
    }
  }
  
  public final void b(ajv paramajv) {}
  
  public final zw[] b()
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
 * Qualified Name:     abc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */