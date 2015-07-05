public final class ti
  implements tr
{
  private byte[] mByteStream;
  
  public ti(byte[] paramArrayOfByte)
  {
    mByteStream = paramArrayOfByte;
  }
  
  public final blu a(String paramString)
  {
    return blu.a(new String[] { "Content-Disposition", "form-data; name=\"" + paramString + "\"; filename=\"" + paramString + "\"" });
  }
  
  public final bmb a()
  {
    return bmb.a(tl.BYTE_STREAM_MEDIA_TYPE, mByteStream);
  }
}

/* Location:
 * Qualified Name:     ti
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */