import com.snapchat.android.stories.StoriesThumbnailType;
import java.util.ArrayList;
import java.util.List;

public final class avx
{
  public final String mCacheKey;
  private final bhk mClock;
  public final List<akl> mStorySnaps;
  final bkm mThumbnail;
  final StoriesThumbnailType mType;
  
  public avx(@chc bkm parambkm)
  {
    this(StoriesThumbnailType.SPECIFIED_BY_METADATA, new ArrayList(), parambkm.a(), parambkm, new bhk());
  }
  
  public avx(StoriesThumbnailType paramStoriesThumbnailType, List<akl> paramList, String paramString)
  {
    this(paramStoriesThumbnailType, paramList, paramString, null, new bhk());
  }
  
  private avx(StoriesThumbnailType paramStoriesThumbnailType, List<akl> paramList, String paramString, bkm parambkm, bhk parambhk)
  {
    mType = paramStoriesThumbnailType;
    mStorySnaps = paramList;
    mThumbnail = parambkm;
    mCacheKey = paramString;
    mClock = parambhk;
  }
}

/* Location:
 * Qualified Name:     avx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */