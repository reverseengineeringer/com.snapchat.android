public final class ty
  implements uh
{
  private byte[] mByteStream;
  
  public ty(byte[] paramArrayOfByte)
  {
    mByteStream = paramArrayOfByte;
  }
  
  public final bmv a(String paramString)
  {
    return bmv.a(new String[] { "Content-Disposition", "form-data; name=\"" + paramString + "\"; filename=\"" + paramString + "\"" });
  }
  
  public final bnc a()
  {
    return bnc.a(ub.BYTE_STREAM_MEDIA_TYPE, mByteStream);
  }
}

/* Location:
 * Qualified Name:     ty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */