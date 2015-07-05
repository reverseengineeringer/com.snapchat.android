package com.snapchat.android.database.table;

import ajx;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import com.snapchat.android.Timber;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.model.Snap.TargetView;
import com.snapchat.android.model.chat.CashFeedItem;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

final class CashFeedItemTable$2
  extends AsyncTask<Void, Void, Void>
{
  CashFeedItemTable$2(Context paramContext) {}
  
  private Void a()
  {
    SQLiteDatabase localSQLiteDatabase = DatabaseHelper.a(a).getWritableDatabase();
    localSQLiteDatabase.beginTransaction();
    try
    {
      HashSet localHashSet = new HashSet();
      localObject1 = CashFeedItemTable.f().entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        Timber.b(CashFeedItemTable.g(), "CASH-LOG: Saving a cash feed item with ID " + (String)((Map.Entry)localObject2).getKey(), new Object[0]);
        localHashSet.add(((Map.Entry)localObject2).getKey());
        CashFeedItemTable.a(localSQLiteDatabase, (CashFeedItem)((Map.Entry)localObject2).getValue(), Snap.TargetView.CHAT);
      }
      if (localCollection.isEmpty()) {
        break label143;
      }
    }
    finally
    {
      localSQLiteDatabase.endTransaction();
    }
    ajx.al();
    label143:
    Object localObject1 = new HashSet();
    Object localObject2 = CashFeedItemTable.h().entrySet().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
      Timber.b(CashFeedItemTable.g(), "CASH-LOG: Deleting a cash feed item with ID " + (String)localEntry.getKey(), new Object[0]);
      ((Set)localObject1).add(localEntry.getKey());
      localSQLiteDatabase.delete("CashFeedItem", CashFeedItemTable.CashSchema.ID.getColumnName() + "=?", new String[] { ((CashFeedItem)localEntry.getValue()).d() });
    }
    CashFeedItemTable.f().keySet().removeAll(localCollection);
    CashFeedItemTable.h().keySet().removeAll((Collection)localObject1);
    localSQLiteDatabase.setTransactionSuccessful();
    localSQLiteDatabase.endTransaction();
    return null;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.database.table.CashFeedItemTable.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */