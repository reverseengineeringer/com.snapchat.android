public final class uv
  extends bne
{
  private cax mBufferedSource;
  final vg[] mProgressListeners;
  final bne mResponseBody;
  
  public uv(bne parambne, vg... paramVarArgs)
  {
    mResponseBody = parambne;
    mProgressListeners = paramVarArgs;
  }
  
  public final long a()
  {
    return mResponseBody.a();
  }
  
  public final cax b()
  {
    if (mBufferedSource == null) {
      mBufferedSource = cbe.a(new cbb(mResponseBody.b())
      {
        long totalBytesRead = 0L;
        
        public final long a(cav paramAnonymouscav, long paramAnonymousLong)
        {
          long l1 = super.a(paramAnonymouscav, paramAnonymousLong);
          long l2 = totalBytesRead;
          int i;
          label49:
          Object localObject;
          if (l1 != -1L)
          {
            paramAnonymousLong = l1;
            totalBytesRead = (paramAnonymousLong + l2);
            paramAnonymouscav = mProgressListeners;
            int j = paramAnonymouscav.length;
            i = 0;
            if (i >= j) {
              break label123;
            }
            localObject = paramAnonymouscav[i];
            paramAnonymousLong = totalBytesRead;
            l2 = mResponseBody.a();
            if (l1 != -1L) {
              break label117;
            }
          }
          label117:
          for (boolean bool = true;; bool = false)
          {
            ((vg)localObject).a(paramAnonymousLong, l2, bool);
            i += 1;
            break label49;
            paramAnonymousLong = 0L;
            break;
          }
          label123:
          return l1;
        }
      });
    }
    return mBufferedSource;
  }
}

/* Location:
 * Qualified Name:     uv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */