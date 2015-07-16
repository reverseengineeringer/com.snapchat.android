final class uv$1
  extends cbb
{
  long totalBytesRead = 0L;
  
  uv$1(uv paramuv, cbk paramcbk)
  {
    super(paramcbk);
  }
  
  public final long a(cav paramcav, long paramLong)
  {
    long l1 = super.a(paramcav, paramLong);
    long l2 = totalBytesRead;
    int i;
    label49:
    Object localObject;
    if (l1 != -1L)
    {
      paramLong = l1;
      totalBytesRead = (paramLong + l2);
      paramcav = this$0.mProgressListeners;
      int j = paramcav.length;
      i = 0;
      if (i >= j) {
        break label123;
      }
      localObject = paramcav[i];
      paramLong = totalBytesRead;
      l2 = this$0.mResponseBody.a();
      if (l1 != -1L) {
        break label117;
      }
    }
    label117:
    for (boolean bool = true;; bool = false)
    {
      ((vg)localObject).a(paramLong, l2, bool);
      i += 1;
      break label49;
      paramLong = 0L;
      break;
    }
    label123:
    return l1;
  }
}

/* Location:
 * Qualified Name:     uv.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */