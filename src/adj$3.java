import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.snapchat.android.Timber;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.discover.model.database.table.EditionTable;

final class adj$3
  implements Runnable
{
  adj$3(adj paramadj) {}
  
  public final void run()
  {
    localObject1 = a;
    Object localObject2 = a;
    localObject2 = h;
    localObject1 = DatabaseHelper.a((Context)localObject2).getWritableDatabase();
    Timber.c("EditionTable", "Removing redundant Editions", new Object[0]);
    ((SQLiteDatabase)localObject1).beginTransaction();
    try
    {
      EditionTable.b((SQLiteDatabase)localObject1);
      ((SQLiteDatabase)localObject1).setTransactionSuccessful();
    }
    catch (SQLiteException localSQLiteException)
    {
      for (;;)
      {
        Timber.f("Edition", "Error while writing to database: %s", new Object[] { localSQLiteException.getMessage() });
        ((SQLiteDatabase)localObject1).endTransaction();
        Timber.c("EditionTable", "Finished removing redundant Editions", new Object[0]);
      }
    }
    finally
    {
      ((SQLiteDatabase)localObject1).endTransaction();
      Timber.c("EditionTable", "Finished removing redundant Editions", new Object[0]);
    }
    EditionTable.a((Context)localObject2);
  }
}

/* Location:
 * Qualified Name:     adj.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */