import com.google.gson.annotations.SerializedName;
import com.snapchat.android.database.table.DbTable.DatabaseTable;

public abstract class aaf
{
  private final akp a;
  final akl b;
  final amp c;
  final amp.a d = new amp.a()
  {
    public final void a(amp.b paramAnonymousb)
    {
      aaf.this.a(paramAnonymousb);
    }
  };
  
  public aaf(akl paramakl)
  {
    this(paramakl, akp.g(), new amp());
  }
  
  private aaf(akl paramakl, akp paramakp, amp paramamp)
  {
    b = paramakl;
    a = paramakp;
    c = paramamp;
  }
  
  final aaf.a a()
  {
    if (b.mNeedsAuth) {
      return new aaf.a(b.mMediaId);
    }
    return null;
  }
  
  protected abstract void a(akl paramakl);
  
  protected final void a(amp.b paramb)
  {
    Object localObject = b;
    localObject = a;
    localObject = b;
    localObject = a;
    if ((localObject != null) && (mResponseCode == 404))
    {
      b.aB();
      b.l();
    }
    for (;;)
    {
      a(b);
      return;
      if (paramb.a())
      {
        b.n();
        if (b.ai() == 0) {
          a.a(new DbTable.DatabaseTable[] { DbTable.DatabaseTable.STORY_SNAP_IMAGE_FILES, DbTable.DatabaseTable.MY_SNAP_IMAGE_FILES });
        } else {
          a.a(new DbTable.DatabaseTable[] { DbTable.DatabaseTable.STORY_SNAP_VIDEO_FILES, DbTable.DatabaseTable.MY_SNAP_VIDEO_FILES });
        }
      }
      else
      {
        b.l();
        if (b.W()) {
          b.aB();
        }
      }
    }
  }
  
  @ud
  final class a
    extends qc
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
 * Qualified Name:     aaf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */