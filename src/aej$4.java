import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.discover.model.database.table.EditionTable;

final class aej$4
  implements Runnable
{
  aej$4(aej paramaej) {}
  
  public final void run()
  {
    localObject1 = a;
    Object localObject2 = a;
    localObject2 = i;
    localObject1 = DatabaseHelper.a((Context)localObject2).getWritableDatabase();
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
        localSQLiteException.getMessage();
        ((SQLiteDatabase)localObject1).endTransaction();
      }
    }
    finally
    {
      ((SQLiteDatabase)localObject1).endTransaction();
    }
    EditionTable.a((Context)localObject2);
  }
}

/* Location:
 * Qualified Name:     aej.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */