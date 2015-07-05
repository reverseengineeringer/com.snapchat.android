package com.google.android.gms.maps.model;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;

public abstract class UrlTileProvider
  implements TileProvider
{
  private final int zzli;
  private final int zzlj;
  
  public UrlTileProvider(int paramInt1, int paramInt2)
  {
    zzli = paramInt1;
    zzlj = paramInt2;
  }
  
  private static long zzb(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    byte[] arrayOfByte = new byte['က'];
    int i;
    for (long l = 0L;; l += i)
    {
      i = paramInputStream.read(arrayOfByte);
      if (i == -1) {
        break;
      }
      paramOutputStream.write(arrayOfByte, 0, i);
    }
    return l;
  }
  
  private static byte[] zze(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    zzb(paramInputStream, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }
  
  public final Tile getTile(int paramInt1, int paramInt2, int paramInt3)
  {
    Object localObject = getTileUrl(paramInt1, paramInt2, paramInt3);
    if (localObject == null) {
      return NO_TILE;
    }
    try
    {
      localObject = new Tile(zzli, zzlj, zze(((URL)localObject).openStream()));
      return (Tile)localObject;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  public abstract URL getTileUrl(int paramInt1, int paramInt2, int paramInt3);
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.UrlTileProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */