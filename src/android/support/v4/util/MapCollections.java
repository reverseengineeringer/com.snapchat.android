package android.support.v4.util;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract class MapCollections<K, V>
{
  MapCollections<K, V>.EntrySet mEntrySet;
  MapCollections<K, V>.KeySet mKeySet;
  MapCollections<K, V>.ValuesCollection mValues;
  
  public static <K, V> boolean containsAllHelper(Map<K, V> paramMap, Collection<?> paramCollection)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      if (!paramMap.containsKey(paramCollection.next())) {
        return false;
      }
    }
    return true;
  }
  
  public static <T> boolean equalsSetHelper(Set<T> paramSet, Object paramObject)
  {
    if (paramSet == paramObject) {}
    for (;;)
    {
      return true;
      if ((paramObject instanceof Set))
      {
        paramObject = (Set)paramObject;
        try
        {
          if (paramSet.size() == ((Set)paramObject).size())
          {
            boolean bool = paramSet.containsAll((Collection)paramObject);
            if (bool) {}
          }
          else
          {
            return false;
          }
        }
        catch (NullPointerException paramSet)
        {
          return false;
        }
        catch (ClassCastException paramSet)
        {
          return false;
        }
      }
    }
    return false;
  }
  
  private Set<Map.Entry<K, V>> getEntrySet()
  {
    if (mEntrySet == null) {
      mEntrySet = new EntrySet();
    }
    return mEntrySet;
  }
  
  private Set<K> getKeySet()
  {
    if (mKeySet == null) {
      mKeySet = new KeySet();
    }
    return mKeySet;
  }
  
  private Collection<V> getValues()
  {
    if (mValues == null) {
      mValues = new ValuesCollection();
    }
    return mValues;
  }
  
  public static <K, V> boolean removeAllHelper(Map<K, V> paramMap, Collection<?> paramCollection)
  {
    int i = paramMap.size();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      paramMap.remove(paramCollection.next());
    }
    return i != paramMap.size();
  }
  
  public static <K, V> boolean retainAllHelper(Map<K, V> paramMap, Collection<?> paramCollection)
  {
    int i = paramMap.size();
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext()) {
      if (!paramCollection.contains(localIterator.next())) {
        localIterator.remove();
      }
    }
    return i != paramMap.size();
  }
  
  protected abstract void colClear();
  
  protected abstract Object colGetEntry(int paramInt1, int paramInt2);
  
  protected abstract Map<K, V> colGetMap();
  
  protected abstract int colGetSize();
  
  protected abstract int colIndexOfKey(Object paramObject);
  
  protected abstract int colIndexOfValue(Object paramObject);
  
  protected abstract void colPut(K paramK, V paramV);
  
  protected abstract void colRemoveAt(int paramInt);
  
  protected abstract V colSetValue(int paramInt, V paramV);
  
  public final Object[] toArrayHelper(int paramInt)
  {
    int j = colGetSize();
    Object[] arrayOfObject = new Object[j];
    int i = 0;
    while (i < j)
    {
      arrayOfObject[i] = colGetEntry(i, paramInt);
      i += 1;
    }
    return arrayOfObject;
  }
  
  public final <T> T[] toArrayHelper(T[] paramArrayOfT, int paramInt)
  {
    int j = colGetSize();
    if (paramArrayOfT.length < j) {
      paramArrayOfT = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), j);
    }
    for (;;)
    {
      int i = 0;
      while (i < j)
      {
        paramArrayOfT[i] = colGetEntry(i, paramInt);
        i += 1;
      }
      if (paramArrayOfT.length > j) {
        paramArrayOfT[j] = null;
      }
      return paramArrayOfT;
    }
  }
  
  final class ArrayIterator<T>
    implements Iterator<T>
  {
    boolean mCanRemove = false;
    int mIndex;
    final int mOffset;
    int mSize;
    
    ArrayIterator(int paramInt)
    {
      mOffset = paramInt;
      mSize = colGetSize();
    }
    
    public final boolean hasNext()
    {
      return mIndex < mSize;
    }
    
    public final T next()
    {
      Object localObject = colGetEntry(mIndex, mOffset);
      mIndex += 1;
      mCanRemove = true;
      return (T)localObject;
    }
    
    public final void remove()
    {
      if (!mCanRemove) {
        throw new IllegalStateException();
      }
      mIndex -= 1;
      mSize -= 1;
      mCanRemove = false;
      colRemoveAt(mIndex);
    }
  }
  
  final class EntrySet
    implements Set<Map.Entry<K, V>>
  {
    EntrySet() {}
    
    private static boolean add$58840bfa()
    {
      throw new UnsupportedOperationException();
    }
    
    public final boolean addAll(Collection<? extends Map.Entry<K, V>> paramCollection)
    {
      int i = colGetSize();
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramCollection.next();
        colPut(localEntry.getKey(), localEntry.getValue());
      }
      return i != colGetSize();
    }
    
    public final void clear()
    {
      colClear();
    }
    
    public final boolean contains(Object paramObject)
    {
      if (!(paramObject instanceof Map.Entry)) {}
      int i;
      do
      {
        return false;
        paramObject = (Map.Entry)paramObject;
        i = colIndexOfKey(((Map.Entry)paramObject).getKey());
      } while (i < 0);
      return ContainerHelpers.equal(colGetEntry(i, 1), ((Map.Entry)paramObject).getValue());
    }
    
    public final boolean containsAll(Collection<?> paramCollection)
    {
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext()) {
        if (!contains(paramCollection.next())) {
          return false;
        }
      }
      return true;
    }
    
    public final boolean equals(Object paramObject)
    {
      return MapCollections.equalsSetHelper(this, paramObject);
    }
    
    public final int hashCode()
    {
      int j = colGetSize() - 1;
      int i = 0;
      if (j >= 0)
      {
        Object localObject1 = colGetEntry(j, 0);
        Object localObject2 = colGetEntry(j, 1);
        int k;
        if (localObject1 == null)
        {
          k = 0;
          label45:
          if (localObject2 != null) {
            break label76;
          }
        }
        label76:
        for (int m = 0;; m = localObject2.hashCode())
        {
          j -= 1;
          i += (m ^ k);
          break;
          k = localObject1.hashCode();
          break label45;
        }
      }
      return i;
    }
    
    public final boolean isEmpty()
    {
      return colGetSize() == 0;
    }
    
    public final Iterator<Map.Entry<K, V>> iterator()
    {
      return new MapCollections.MapIterator(MapCollections.this);
    }
    
    public final boolean remove(Object paramObject)
    {
      throw new UnsupportedOperationException();
    }
    
    public final boolean removeAll(Collection<?> paramCollection)
    {
      throw new UnsupportedOperationException();
    }
    
    public final boolean retainAll(Collection<?> paramCollection)
    {
      throw new UnsupportedOperationException();
    }
    
    public final int size()
    {
      return colGetSize();
    }
    
    public final Object[] toArray()
    {
      throw new UnsupportedOperationException();
    }
    
    public final <T> T[] toArray(T[] paramArrayOfT)
    {
      throw new UnsupportedOperationException();
    }
  }
  
  final class KeySet
    implements Set<K>
  {
    KeySet() {}
    
    public final boolean add(K paramK)
    {
      throw new UnsupportedOperationException();
    }
    
    public final boolean addAll(Collection<? extends K> paramCollection)
    {
      throw new UnsupportedOperationException();
    }
    
    public final void clear()
    {
      colClear();
    }
    
    public final boolean contains(Object paramObject)
    {
      return colIndexOfKey(paramObject) >= 0;
    }
    
    public final boolean containsAll(Collection<?> paramCollection)
    {
      return MapCollections.containsAllHelper(colGetMap(), paramCollection);
    }
    
    public final boolean equals(Object paramObject)
    {
      return MapCollections.equalsSetHelper(this, paramObject);
    }
    
    public final int hashCode()
    {
      int i = colGetSize() - 1;
      int j = 0;
      if (i >= 0)
      {
        Object localObject = colGetEntry(i, 0);
        if (localObject == null) {}
        for (int k = 0;; k = localObject.hashCode())
        {
          j += k;
          i -= 1;
          break;
        }
      }
      return j;
    }
    
    public final boolean isEmpty()
    {
      return colGetSize() == 0;
    }
    
    public final Iterator<K> iterator()
    {
      return new MapCollections.ArrayIterator(MapCollections.this, 0);
    }
    
    public final boolean remove(Object paramObject)
    {
      int i = colIndexOfKey(paramObject);
      if (i >= 0)
      {
        colRemoveAt(i);
        return true;
      }
      return false;
    }
    
    public final boolean removeAll(Collection<?> paramCollection)
    {
      return MapCollections.removeAllHelper(colGetMap(), paramCollection);
    }
    
    public final boolean retainAll(Collection<?> paramCollection)
    {
      return MapCollections.retainAllHelper(colGetMap(), paramCollection);
    }
    
    public final int size()
    {
      return colGetSize();
    }
    
    public final Object[] toArray()
    {
      return toArrayHelper(0);
    }
    
    public final <T> T[] toArray(T[] paramArrayOfT)
    {
      return toArrayHelper(paramArrayOfT, 0);
    }
  }
  
  final class MapIterator
    implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V>
  {
    int mEnd = colGetSize() - 1;
    boolean mEntryValid = false;
    int mIndex = -1;
    
    MapIterator() {}
    
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
      } while ((!ContainerHelpers.equal(((Map.Entry)paramObject).getKey(), colGetEntry(mIndex, 0))) || (!ContainerHelpers.equal(((Map.Entry)paramObject).getValue(), colGetEntry(mIndex, 1))));
      return true;
    }
    
    public final K getKey()
    {
      if (!mEntryValid) {
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
      }
      return (K)colGetEntry(mIndex, 0);
    }
    
    public final V getValue()
    {
      if (!mEntryValid) {
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
      }
      return (V)colGetEntry(mIndex, 1);
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
      Object localObject1 = colGetEntry(mIndex, 0);
      Object localObject2 = colGetEntry(mIndex, 1);
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
      colRemoveAt(mIndex);
      mIndex -= 1;
      mEnd -= 1;
      mEntryValid = false;
    }
    
    public final V setValue(V paramV)
    {
      if (!mEntryValid) {
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
      }
      return (V)colSetValue(mIndex, paramV);
    }
    
    public final String toString()
    {
      return getKey() + "=" + getValue();
    }
  }
  
  final class ValuesCollection
    implements Collection<V>
  {
    ValuesCollection() {}
    
    public final boolean add(V paramV)
    {
      throw new UnsupportedOperationException();
    }
    
    public final boolean addAll(Collection<? extends V> paramCollection)
    {
      throw new UnsupportedOperationException();
    }
    
    public final void clear()
    {
      colClear();
    }
    
    public final boolean contains(Object paramObject)
    {
      return colIndexOfValue(paramObject) >= 0;
    }
    
    public final boolean containsAll(Collection<?> paramCollection)
    {
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext()) {
        if (!contains(paramCollection.next())) {
          return false;
        }
      }
      return true;
    }
    
    public final boolean isEmpty()
    {
      return colGetSize() == 0;
    }
    
    public final Iterator<V> iterator()
    {
      return new MapCollections.ArrayIterator(MapCollections.this, 1);
    }
    
    public final boolean remove(Object paramObject)
    {
      int i = colIndexOfValue(paramObject);
      if (i >= 0)
      {
        colRemoveAt(i);
        return true;
      }
      return false;
    }
    
    public final boolean removeAll(Collection<?> paramCollection)
    {
      int i = 0;
      int j = colGetSize();
      boolean bool = false;
      while (i < j)
      {
        int m = i;
        int k = j;
        if (paramCollection.contains(colGetEntry(i, 1)))
        {
          colRemoveAt(i);
          m = i - 1;
          k = j - 1;
          bool = true;
        }
        i = m + 1;
        j = k;
      }
      return bool;
    }
    
    public final boolean retainAll(Collection<?> paramCollection)
    {
      int i = 0;
      int j = colGetSize();
      boolean bool = false;
      while (i < j)
      {
        int m = i;
        int k = j;
        if (!paramCollection.contains(colGetEntry(i, 1)))
        {
          colRemoveAt(i);
          m = i - 1;
          k = j - 1;
          bool = true;
        }
        i = m + 1;
        j = k;
      }
      return bool;
    }
    
    public final int size()
    {
      return colGetSize();
    }
    
    public final Object[] toArray()
    {
      return toArrayHelper(1);
    }
    
    public final <T> T[] toArray(T[] paramArrayOfT)
    {
      return toArrayHelper(paramArrayOfT, 1);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.util.MapCollections
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */