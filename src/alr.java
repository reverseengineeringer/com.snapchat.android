import com.snapchat.android.Timber;
import java.io.ByteArrayInputStream;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public abstract class alr
  implements alb.a
{
  private final Map<String, aje> a;
  private final awp b;
  
  public alr(Map<String, aje> paramMap, awp paramawp)
  {
    a = ((Map)ck.a(paramMap));
    b = ((awp)ck.a(paramawp));
  }
  
  private void a(bfl parambfl)
  {
    ZipInputStream localZipInputStream = new ZipInputStream(new ByteArrayInputStream(mBuffer, 0, mSize));
    parambfl = null;
    try
    {
      for (;;)
      {
        Object localObject = localZipInputStream.getNextEntry();
        if (localObject == null) {
          break;
        }
        byte[] arrayOfByte = eb.a(localZipInputStream);
        String str = ((ZipEntry)localObject).getName();
        Iterator localIterator = a.entrySet().iterator();
        boolean bool;
        do
        {
          do
          {
            if (!localIterator.hasNext()) {
              break;
            }
            localObject = (Map.Entry)localIterator.next();
          } while (!(((Map.Entry)localObject).getValue() instanceof ajr));
          bool = str.equals(getValuemMediaId);
        } while (!bool);
        try
        {
          a(arrayOfByte, (aje)((Map.Entry)localObject).getValue(), (String)((Map.Entry)localObject).getKey());
        }
        catch (Exception parambfl)
        {
          Timber.f("SnapMediaDownloadHandler", "Failed download for %s (%s)", new Object[] { ((Map.Entry)localObject).getValue(), parambfl });
        }
      }
      bfo.a(localZipInputStream);
      if (parambfl != null) {
        throw parambfl;
      }
    }
    finally
    {
      bfo.a(localZipInputStream);
    }
  }
  
  private void a(byte[] paramArrayOfByte, aje paramaje, String paramString)
  {
    byte[] arrayOfByte = paramArrayOfByte;
    if (!(paramaje instanceof ajr))
    {
      paramArrayOfByte = paramaje.K().a(paramArrayOfByte);
      arrayOfByte = paramArrayOfByte;
      if (paramArrayOfByte == null) {
        throw new Exception(String.format("Decrypted null data for %s", new Object[] { paramaje }));
      }
    }
    b.a(paramString, arrayOfByte);
  }
  
  public final void a(alc paramalc)
  {
    throw new UnsupportedOperationException("onCanceled has not been implemented for snap media.");
  }
  
  public final void a(alc paramalc, bfl parambfl, uc paramuc)
  {
    Object localObject1 = null;
    if ((paramuc != null) && (paramuc.d()))
    {
      if (parambfl != null) {}
      try
      {
        if ((mBuffer != null) && (mSize != 0)) {
          break label65;
        }
        throw new Exception("Result buffer is null or empty");
      }
      catch (Exception paramalc)
      {
        Timber.a("SnapMediaDownloadHandler", paramalc);
      }
      a(paramuc, paramalc, a.size());
      return;
      label65:
      paramalc = paramuc.a("Content-Type");
      if ((paramalc == null) || (!paramalc.contains("application/zip"))) {
        break label292;
      }
    }
    label292:
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        a(parambfl);
        paramalc = (alc)localObject1;
        break;
      }
      a.size();
      Object localObject2 = a.entrySet().iterator();
      paramalc = (alc)localObject1;
      if (!((Iterator)localObject2).hasNext()) {
        break;
      }
      localObject2 = (Map.Entry)((Iterator)localObject2).next();
      if ((parambfl != null) && (mSize > 0))
      {
        paramalc = new byte[mSize];
        System.arraycopy(mBuffer, 0, paramalc, 0, mSize);
      }
      for (;;)
      {
        a(paramalc, (aje)((Map.Entry)localObject2).getValue(), (String)((Map.Entry)localObject2).getKey());
        paramalc = (alc)localObject1;
        break;
        parambfl = a.entrySet().iterator();
        for (paramalc = null; parambfl.hasNext(); paramalc = mCaughtException) {
          Timber.f("SnapMediaDownloadHandler", "Failed download for %s (%s), skipping caching", new Object[] { ((Map.Entry)parambfl.next()).getValue(), paramuc });
        }
        break;
        paramalc = null;
      }
    }
  }
  
  public abstract void a(uc paramuc, Exception paramException, int paramInt);
}

/* Location:
 * Qualified Name:     alr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */