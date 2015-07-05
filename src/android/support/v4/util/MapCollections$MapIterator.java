package android.support.v4.util;

import java.util.Iterator;
import java.util.Map.Entry;

final class MapCollections$MapIterator
  implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V>
{
  int mEnd;
  boolean mEntryValid = false;
  int mIndex;
  
  MapCollections$MapIterator(MapCollections paramMapCollections)
  {
    mEnd = (paramMapCollections.colGetSize() - 1);
    mIndex = -1;
  }
  
  private Map.Entry<K, V> next()
  {
    mIndex += 1;
    mEntryValid = true;
    return this;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!mEntryValid) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    if (!(paramObject instanceof Map.Entry)) {}
    do
    {
      return false;
      paramObject = (Map.Entry)paramObject;
    } while ((!ContainerHelpers.equal(((Map.Entry)paramObject).getKey(), this$0.colGetEntry(mIndex, 0))) || (!ContainerHelpers.equal(((Map.Entry)paramObject).getValue(), this$0.colGetEntry(mIndex, 1))));
    return true;
  }
  
  public final K getKey()
  {
    if (!mEntryValid) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    return (K)this$0.colGetEntry(mIndex, 0);
  }
  
  public final V getValue()
  {
    if (!mEntryValid) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    return (V)this$0.colGetEntry(mIndex, 1);
  }
  
  public final boolean hasNext()
  {
    return mIndex < mEnd;
  }
  
  public final int hashCode()
  {
    int j = 0;
    if (!mEntryValid) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    Object localObject1 = this$0.colGetEntry(mIndex, 0);
    Object localObject2 = this$0.colGetEntry(mIndex, 1);
    int i;
    if (localObject1 == null)
    {
      i = 0;
      if (localObject2 != null) {
        break label69;
      }
    }
    for (;;)
    {
      return j ^ i;
      i = localObject1.hashCode();
      break;
      label69:
      j = localObject2.hashCode();
    }
  }
  
  public final void remove()
  {
    if (!mEntryValid) {
      throw new IllegalStateException();
    }
    this$0.colRemoveAt(mIndex);
    mIndex -= 1;
    mEnd -= 1;
    mEntryValid = false;
  }
  
  public final V setValue(V paramV)
  {
    if (!mEntryValid) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    return (V)this$0.colSetValue(mIndex, paramV);
  }
  
  public final String toString()
  {
    return getKey() + "=" + getValue();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.util.MapCollections.MapIterator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */