package com.snapchat.android.dev;

import abi;
import abj;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import android.support.v4.widget.DrawerLayout;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.TextView;
import apf;
import com.snapchat.android.database.table.DbTable.DatabaseTable;
import com.snapchat.android.database.vtable.DbVirtualTable.DatabaseVirtualTable;
import java.util.Arrays;
import java.util.List;
import zw;

public class DbBrowserActivity
  extends FragmentActivity
  implements LoaderManager.LoaderCallbacks<Cursor>
{
  private DrawerLayout a;
  private ListView b;
  private ListView c;
  private ListView d;
  private abi e;
  private TextView f;
  private TextView g;
  private DbTable.DatabaseTable h = DbTable.DatabaseTable.CONVERSATION;
  private DbVirtualTable.DatabaseVirtualTable i = null;
  
  private static Cursor a(Cursor paramCursor)
  {
    if (paramCursor == null) {
      localObject = null;
    }
    do
    {
      return (Cursor)localObject;
      localObject = paramCursor;
    } while (TextUtils.equals(paramCursor.getColumnName(0), "_id"));
    Object localObject = new String[paramCursor.getColumnCount() + 1];
    localObject[0] = "_id";
    int j = 0;
    while (j < paramCursor.getColumnCount())
    {
      localObject[(j + 1)] = paramCursor.getColumnName(j);
      j += 1;
    }
    MatrixCursor localMatrixCursor = new MatrixCursor((String[])localObject);
    if (paramCursor.moveToFirst()) {
      j = 0;
    }
    for (;;)
    {
      Object[] arrayOfObject = new Object[localObject.length];
      arrayOfObject[0] = Integer.valueOf(j);
      int k = 0;
      while (k < paramCursor.getColumnCount())
      {
        arrayOfObject[(k + 1)] = paramCursor.getString(k);
        k += 1;
      }
      localMatrixCursor.addRow(arrayOfObject);
      if (!paramCursor.moveToNext()) {
        return localMatrixCursor;
      }
      j += 1;
    }
  }
  
  private void a(zw[] paramArrayOfzw)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Schema\n\n");
    int k = paramArrayOfzw.length;
    int j = 0;
    while (j < k)
    {
      zw localzw = paramArrayOfzw[j];
      localStringBuilder.append(localzw.getColumnNumber());
      localStringBuilder.append(" ");
      localStringBuilder.append(localzw.getColumnName());
      localStringBuilder.append(" : ");
      localStringBuilder.append(localzw.getDataType());
      localStringBuilder.append("\n");
      j += 1;
    }
    g.setText(localStringBuilder.toString());
  }
  
  protected final void a()
  {
    getSupportLoaderManager().restartLoader$71be8de6(0, this);
  }
  
  protected void onCreate(final Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130968646);
    a = ((DrawerLayout)findViewById(2131362198));
    b = ((ListView)findViewById(2131362201));
    g = ((TextView)findViewById(2131362200));
    e = new abi(this);
    b.setAdapter(e);
    c = ((ListView)findViewById(2131362204));
    f = ((TextView)findViewById(2131362199));
    f.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        DbBrowserActivity.a(DbBrowserActivity.this).smoothScrollToPosition(0);
      }
    });
    d = ((ListView)findViewById(2131362207));
    paramBundle = new a(this, Arrays.asList((Object[])DbTable.DatabaseTable.values()));
    c.setAdapter(paramBundle);
    c.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = paramBundle.getItem(paramAnonymousInt);
        if ((paramAnonymousAdapterView instanceof DbTable.DatabaseTable))
        {
          paramAnonymousAdapterView = (DbTable.DatabaseTable)paramAnonymousAdapterView;
          DbBrowserActivity.a(DbBrowserActivity.this, paramAnonymousAdapterView);
          a();
        }
        DbBrowserActivity.b(DbBrowserActivity.this).closeDrawers(false);
      }
    });
    paramBundle = new a(this, Arrays.asList((Object[])DbVirtualTable.DatabaseVirtualTable.values()));
    d.setAdapter(paramBundle);
    d.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = paramBundle.getItem(paramAnonymousInt);
        if ((paramAnonymousAdapterView instanceof DbVirtualTable.DatabaseVirtualTable))
        {
          paramAnonymousAdapterView = (DbVirtualTable.DatabaseVirtualTable)paramAnonymousAdapterView;
          DbBrowserActivity.a(DbBrowserActivity.this, paramAnonymousAdapterView);
          a();
        }
        DbBrowserActivity.b(DbBrowserActivity.this).closeDrawers(false);
      }
    });
    getSupportLoaderManager().initLoader$71be8de6(0, this);
    a.openDrawer(3);
  }
  
  public Loader<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    switch (paramInt)
    {
    default: 
      return null;
    }
    if (h != null) {
      return new abj(this, h.getTable());
    }
    return new abj(this, i.getVirtualTable());
  }
  
  public void onLoaderReset(Loader<Cursor> paramLoader)
  {
    paramLoader.reset();
  }
  
  final class a
    extends apf
  {
    private int b = 2130968648;
    
    public a(int paramInt)
    {
      super(2130968648, localList);
    }
    
    public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      View localView = paramView;
      if (paramView == null) {
        localView = getLayoutInflater().inflate(b, paramViewGroup, false);
      }
      paramView = getItem(paramInt);
      paramViewGroup = (TextView)localView.findViewById(2131362209);
      if ((paramView instanceof DbTable.DatabaseTable)) {
        paramViewGroup.setText(((DbTable.DatabaseTable)paramView).name());
      }
      while (!(paramView instanceof DbVirtualTable.DatabaseVirtualTable)) {
        return localView;
      }
      paramViewGroup.setText(((DbVirtualTable.DatabaseVirtualTable)paramView).name());
      return localView;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.dev.DbBrowserActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */