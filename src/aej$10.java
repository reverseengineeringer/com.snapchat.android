import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.discover.model.database.table.ChannelViewStateTable;
import com.snapchat.android.discover.model.database.table.DSnapViewStateTable;
import com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema;
import com.snapchat.android.discover.model.database.table.EditionViewStateTable;
import com.snapchat.android.discover.model.database.table.EditionViewStateTable.EditionViewStateSchema;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class aej$10
  implements Runnable
{
  public aej$10(aej paramaej) {}
  
  public final void run()
  {
    Object localObject3;
    SQLiteDatabase localSQLiteDatabase;
    synchronized (aej.f(a))
    {
      if (aej.d(a) != null)
      {
        localObject3 = EditionViewStateTable.a();
        localSQLiteDatabase = DatabaseHelper.a(aej.d(a)).getWritableDatabase();
        localSQLiteDatabase.beginTransaction();
      }
    }
    try
    {
      localSQLiteDatabase.delete("EditionViewState", null, null);
      localObject3 = c.b.values().iterator();
      ContentValues localContentValues;
      do
      {
        if (!((Iterator)localObject3).hasNext()) {
          break;
        }
        localContentValues = EditionViewStateTable.a((aef.c)((Iterator)localObject3).next());
      } while ((localContentValues == null) || (localSQLiteDatabase.insertWithOnConflict("EditionViewState", null, localContentValues, 5) != -1L));
      throw new SQLiteException("Insertion in DB failed for EditionViewState");
    }
    catch (SQLiteException localSQLiteException)
    {
      localSQLiteException.getMessage();
      localSQLiteDatabase.endTransaction();
      for (;;)
      {
        ChannelViewStateTable.a().a(aej.d(a));
        DSnapViewStateTable.a().a(aej.d(a));
        return;
        localSQLiteDatabase.execSQL(aau.a("EditionViewState", EditionViewStateTable.EditionViewStateSchema.ID, "Edition", EditionTable.EditionSchema.ID));
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
      }
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    finally
    {
      ((SQLiteDatabase)localObject2).endTransaction();
    }
  }
}

/* Location:
 * Qualified Name:     aej.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */