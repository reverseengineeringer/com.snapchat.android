package com.snapchat.android;

import abp;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.CursorLoader;
import android.support.v4.content.Loader;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AbsListView;
import android.widget.Button;
import com.snapchat.android.content.SnapchatProvider;
import com.snapchat.android.database.schema.HttpMetricSchema;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;
import mr;

public class HttpMetricsActivity
  extends FragmentActivity
  implements LoaderManager.LoaderCallbacks<Cursor>, View.OnClickListener
{
  private AbsListView a;
  private mr b;
  private Button c;
  private Button d;
  private Button e;
  private Button f;
  private Button g;
  private String h = HttpMetricSchema.TIMESTAMP.getColumnName() + " DESC";
  
  private void a()
  {
    getSupportLoaderManager().restartLoader$71be8de6(900, this);
  }
  
  public void onClick(View paramView)
  {
    if (paramView == d)
    {
      h = (HttpMetricSchema.TIMESTAMP.getColumnName() + " DESC");
      a();
    }
    do
    {
      return;
      if (paramView == e)
      {
        h = (HttpMetricSchema.DURATION.getColumnName() + " DESC");
        a();
        return;
      }
      if (paramView == f)
      {
        h = (HttpMetricSchema.RECEIVED_BYTES.getColumnName() + " DESC");
        a();
        return;
      }
    } while (paramView != g);
    h = (HttpMetricSchema.SENT_BYTES.getColumnName() + " DESC");
    a();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    kkxxkk.b041E041EОО041EО(getApplicationContext());
    xkkkxk.b041E041EООО041E(getApplicationContext());
    super.onCreate(paramBundle);
    setContentView(2130968686);
    a = ((AbsListView)findViewById(2131362386));
    b = new mr(this);
    c = ((Button)findViewById(2131362385));
    c.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        abp.a(HttpMetricsActivity.this);
      }
    });
    d = ((Button)findViewById(2131362381));
    d.setOnClickListener(this);
    e = ((Button)findViewById(2131362382));
    e.setOnClickListener(this);
    f = ((Button)findViewById(2131362384));
    f.setOnClickListener(this);
    g = ((Button)findViewById(2131362383));
    g.setOnClickListener(this);
    a.setAdapter(b);
    getSupportLoaderManager().initLoader$71be8de6(900, this);
  }
  
  public Loader<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    switch (paramInt)
    {
    default: 
      return null;
    }
    return new CursorLoader(this, SnapchatProvider.a, abp.a, h);
  }
  
  public void onLoaderReset(Loader<Cursor> paramLoader) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.HttpMetricsActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */