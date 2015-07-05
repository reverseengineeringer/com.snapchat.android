import com.google.gson.annotations.SerializedName;
import com.snapchat.android.Timber;
import com.snapchat.android.database.table.DbTable.DatabaseTable;

public abstract class zi
{
  private final ajv a;
  final ajr b;
  final als c;
  final als.a d = new als.a()
  {
    public final void a(als.b paramAnonymousb)
    {
      zi.this.a(paramAnonymousb);
    }
  };
  
  public zi(ajr paramajr)
  {
    this(paramajr, ajv.g(), new als());
  }
  
  private zi(ajr paramajr, ajv paramajv, als paramals)
  {
    b = paramajr;
    a = paramajv;
    c = paramals;
  }
  
  final zi.a a()
  {
    if (b.mNeedsAuth) {
      return new zi.a(b.mMediaId);
    }
    return null;
  }
  
  protected abstract void a(ajr paramajr);
  
  protected final void a(als.b paramb)
  {
    Timber.c("StorySnapLoadTask", "Download for %s complete. Result:%s cachingException:%s", new Object[] { b, a, b });
    uc localuc = a;
    if ((localuc != null) && (mResponseCode == 404))
    {
      b.aG();
      b.l();
    }
    for (;;)
    {
      a(b);
      return;
      if (paramb.a())
      {
        b.n();
        if (b.ak() == 0) {
          a.a(new DbTable.DatabaseTable[] { DbTable.DatabaseTable.STORY_SNAP_IMAGE_FILES, DbTable.DatabaseTable.MY_SNAP_IMAGE_FILES });
        } else {
          a.a(new DbTable.DatabaseTable[] { DbTable.DatabaseTable.STORY_SNAP_VIDEO_FILES, DbTable.DatabaseTable.MY_SNAP_VIDEO_FILES });
        }
      }
      else
      {
        b.l();
        if (b.Y()) {
          b.aG();
        }
      }
    }
  }
  
  @tn
  final class a
    extends pl
  {
    @SerializedName("story_id")
    final String a;
    
    a(String paramString)
    {
      a = paramString;
    }
  }
}

/* Location:
 * Qualified Name:     zi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */