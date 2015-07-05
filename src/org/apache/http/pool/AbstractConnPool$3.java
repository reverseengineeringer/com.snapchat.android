package org.apache.http.pool;

class AbstractConnPool$3
  implements PoolEntryCallback<T, C>
{
  AbstractConnPool$3(AbstractConnPool paramAbstractConnPool, long paramLong) {}
  
  public void process(PoolEntry<T, C> paramPoolEntry)
  {
    if (paramPoolEntry.getUpdated() <= val$deadline) {
      paramPoolEntry.close();
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.http.pool.AbstractConnPool.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */