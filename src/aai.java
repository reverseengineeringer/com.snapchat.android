import android.text.TextUtils;
import java.io.ByteArrayInputStream;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public abstract class aai
  implements alw.a
{
  private final Map<String, String> a;
  private final axn b;
  
  private aai(@chc axn paramaxn, @chc Map<String, String> paramMap)
  {
    a = ((Map)co.a(paramMap));
    b = ((axn)co.a(paramaxn));
  }
  
  public aai(@chc Map<String, String> paramMap)
  {
    this(axo.STORY_SNAP_RECEIVED_THUMBNAIL_CACHE, paramMap);
  }
  
  private void a(bgl parambgl)
  {
    ZipInputStream localZipInputStream = new ZipInputStream(new ByteArrayInputStream(mBuffer, 0, mSize));
    parambgl = null;
    try
    {
      for (;;)
      {
        ZipEntry localZipEntry = localZipInputStream.getNextEntry();
        if (localZipEntry == null) {
          break;
        }
        byte[] arrayOfByte = ek.a(localZipInputStream);
        String str = localZipEntry.getName();
        str = (String)a.get(str);
        boolean bool = TextUtils.isEmpty(str);
        if (!bool) {
          try
          {
            a(arrayOfByte, arrayOfByte.length, str);
          }
          catch (Exception parambgl) {}
        } else {
          localZipEntry.getName();
        }
      }
    }
    finally
    {
      bgo.a(localZipInputStream);
    }
    if (parambgl != null) {
      throw parambgl;
    }
  }
  
  private void a(byte[] paramArrayOfByte, int paramInt, String paramString)
  {
    b.a(paramString, paramArrayOfByte, paramInt);
  }
  
  public abstract void a(int paramInt);
  
  public final void a(aly paramaly)
  {
    throw new UnsupportedOperationException("onCanceled has not been implemented for snap media.");
  }
  
  public final void a(aly paramaly, bgl parambgl, us paramus)
  {
    if ((paramus != null) && (paramus.d()))
    {
      if (parambgl != null) {}
      try
      {
        if ((mBuffer != null) && (mSize != 0)) {
          break label54;
        }
        throw new Exception("Result buffer is null or empty");
      }
      catch (Exception paramaly) {}
      a(a.size());
      return;
      label54:
      paramaly = paramus.a("Content-Type");
      if ((paramaly == null) || (!paramaly.contains("application/zip"))) {
        break label200;
      }
    }
    label200:
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        a(parambgl);
        break;
      }
      a.size();
      paramaly = a.entrySet().iterator();
      if (!paramaly.hasNext()) {
        break;
      }
      paramaly = (String)((Map.Entry)paramaly.next()).getValue();
      a(mBuffer, mSize, paramaly);
      break;
      paramaly = a.entrySet().iterator();
      while (paramaly.hasNext()) {
        ((Map.Entry)paramaly.next()).getValue();
      }
      break;
    }
  }
}

/* Location:
 * Qualified Name:     aai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */