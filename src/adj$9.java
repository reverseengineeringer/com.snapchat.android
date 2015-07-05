import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.snapchat.android.Timber;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.discover.model.database.table.ChannelViewStateTable;
import com.snapchat.android.discover.model.database.table.DSnapViewStateTable;
import com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema;
import com.snapchat.android.discover.model.database.table.EditionViewStateTable;
import com.snapchat.android.discover.model.database.table.EditionViewStateTable.EditionViewStateSchema;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class adj$9
  implements Runnable
{
  public adj$9(adj paramadj) {}
  
  public final void run()
  {
    Object localObject3;
    SQLiteDatabase localSQLiteDatabase;
    synchronized (adj.f(a))
    {
      if (adj.d(a) != null)
      {
        localObject3 = EditionViewStateTable.a();
        localSQLiteDatabase = DatabaseHelper.a(adj.d(a)).getWritableDatabase();
        Timber.c("EditionViewStateTable", "safeUpdate - beginTransaction", new Object[0]);
        localSQLiteDatabase.beginTransaction();
      }
    }
    try
    {
      Timber.c("EditionViewStateTable", "Delete the table for EditionViewState", new Object[0]);
      localSQLiteDatabase.delete("EditionViewState", null, null);
      localObject3 = c.b.values().iterator();
      ContentValues localContentValues;
      do
      {
        if (!((Iterator)localObject3).hasNext()) {
          break;
        }
        localContentValues = EditionViewStateTable.a((adf.c)((Iterator)localObject3).next());
      } while ((localContentValues == null) || (localSQLiteDatabase.insertWithOnConflict("EditionViewState", null, localContentValues, 5) != -1L));
      throw new SQLiteException("Insertion in DB failed for EditionViewState");
    }
    catch (SQLiteException localSQLiteException)
    {
      Timber.f("EditionViewState", "Error while writing to database: %s", new Object[] { localSQLiteException.getMessage() });
      localSQLiteDatabase.endTransaction();
      Timber.c("EditionViewStateTable", "safeUpdate - endTransaction", new Object[0]);
      for (;;)
      {
        ChannelViewStateTable.a().a(adj.d(a));
        DSnapViewStateTable.a().a(adj.d(a));
        return;
        Timber.c("EditionViewStateTable", "Remove redundant entries in EditionViewState", new Object[0]);
        localSQLiteDatabase.execSQL(zv.a("EditionViewState", EditionViewStateTable.EditionViewStateSchema.ID, "Edition", EditionTable.EditionSchema.ID));
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        Timber.c("EditionViewStateTable", "safeUpdate - endTransaction", new Object[0]);
      }
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    finally
    {
      ((SQLiteDatabase)localObject2).endTransaction();
      Timber.c("EditionViewStateTable", "safeUpdate - endTransaction", new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     adj.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */