import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.database.table.EditionStatus;
import com.snapchat.android.discover.model.database.table.EditionTable;
import com.snapchat.android.discover.model.database.table.EditionTable.EditionSchema;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class aej$7
  implements Runnable
{
  public aej$7(aej paramaej, List paramList) {}
  
  public final void run()
  {
    localObject1 = new HashSet(a.size());
    Object localObject2 = a.iterator();
    while (((Iterator)localObject2).hasNext()) {
      ((Set)localObject1).add(((DSnapPage)((Iterator)localObject2).next()).b());
    }
    aej.c(b).a((Set)localObject1);
    aej.e(b);
    localObject2 = aej.d(b);
    localObject1 = DatabaseHelper.a((Context)localObject2).getWritableDatabase();
    ((SQLiteDatabase)localObject1).beginTransaction();
    try
    {
      EditionTable.a((SQLiteDatabase)localObject1, "Edition", EditionTable.EditionSchema.STATUS, EditionStatus.ARCHIVED.toString());
      EditionTable.a((SQLiteDatabase)localObject1, "EditionChunk", EditionTable.EditionSchema.STATUS, EditionStatus.ARCHIVED.toString());
      EditionTable.b((SQLiteDatabase)localObject1);
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
 * Qualified Name:     aej.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */