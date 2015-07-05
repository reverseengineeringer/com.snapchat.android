package com.snapchat.android.dev;

import android.support.v4.widget.DrawerLayout;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.snapchat.android.database.table.DbTable.DatabaseTable;

final class DbBrowserActivity$2
  implements AdapterView.OnItemClickListener
{
  DbBrowserActivity$2(DbBrowserActivity paramDbBrowserActivity, DbBrowserActivity.a parama) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = a.getItem(paramInt);
    if ((paramAdapterView instanceof DbTable.DatabaseTable))
    {
      paramAdapterView = (DbTable.DatabaseTable)paramAdapterView;
      DbBrowserActivity.a(b, paramAdapterView);
      b.a();
    }
    DbBrowserActivity.b(b).closeDrawers(false);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.dev.DbBrowserActivity.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */