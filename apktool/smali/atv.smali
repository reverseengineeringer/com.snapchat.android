.class public abstract Latv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laah$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Latv$3;
    }
.end annotation


# static fields
.field static final CACHED_THUMBNAIL_COUNT:Ljava/lang/String; = "CachedThumbnails"

.field static final DOWNLOAD_THUMBNAIL_COUNT:Ljava/lang/String; = "DownloadThumbnails"

.field private static final ENABLE_MULTI_THUMBNAIL_VARIABLE:Ljava/lang/String; = "ENABLE_MULTI_THUMBNAIL"

.field private static final MULTI_THUMBNAIL_STUDY_ID:Ljava/lang/String; = "MULTI_THUMBNAIL"

.field static final PIE_SLICE_BUILD_TIME_METRIC:Ljava/lang/String; = "PIE_SLICE_BUILD_TIME"

.field private static final TAG:Ljava/lang/String; = "BuildPieSliceTask"

.field static final THUMBNAIL_DECRYPT_FAILURE_COUNT:Ljava/lang/String; = "ThumbnailDecryptFailureCount"

.field public static final THUMBNAIL_SIZE:I = 0x66


# instance fields
.field private final mBitmapPool:Lawo;

.field private final mContext:Landroid/content/Context;

.field private final mEasyMetricFactory:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

.field private final mMiscExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mPendingDownloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mPieSliceBuildMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

.field private final mStorySnaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lakl;",
            ">;"
        }
    .end annotation
.end field

.field private final mStudySettings:Lakn;

.field private final mThumbnailDownloader:Laah;

.field private final mThumbnailType:Lcom/snapchat/android/stories/StoriesThumbnailType;


# direct methods
.method private constructor <init>(Landroid/content/Context;Laah;Lawo;Ljava/util/concurrent/ExecutorService;Ljava/util/List;Lavx;Lapk;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lakn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Laah;",
            "Lawo;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/List",
            "<",
            "Lakl;",
            ">;",
            "Lavx;",
            "Lapk;",
            "Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;",
            "Lakn;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Latv;->mPieSliceBuildMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Latv;->mStorySnaps:Ljava/util/List;

    .line 81
    const-string v0, "stories is null"

    invoke-static {p5, v0}, Lco;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "stories size is 0"

    invoke-static {v0, v1}, Lco;->a(ZLjava/lang/Object;)V

    .line 83
    const-string v0, "context is null"

    invoke-static {p1, v0}, Lco;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Latv;->mContext:Landroid/content/Context;

    .line 84
    iput-object p3, p0, Latv;->mBitmapPool:Lawo;

    .line 85
    iput-object p2, p0, Latv;->mThumbnailDownloader:Laah;

    .line 86
    iput-object p4, p0, Latv;->mMiscExecutor:Ljava/util/concurrent/ExecutorService;

    .line 87
    iget-object v0, p6, Lavx;->mType:Lcom/snapchat/android/stories/StoriesThumbnailType;

    iput-object v0, p0, Latv;->mThumbnailType:Lcom/snapchat/android/stories/StoriesThumbnailType;

    .line 88
    iput-object p8, p0, Latv;->mEasyMetricFactory:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 89
    iput-object p9, p0, Latv;->mStudySettings:Lakn;

    .line 91
    sget-object v0, Latv$3;->$SwitchMap$com$snapchat$android$stories$StoriesThumbnailType:[I

    iget-object v1, p0, Latv;->mThumbnailType:Lcom/snapchat/android/stories/StoriesThumbnailType;

    invoke-virtual {v1}, Lcom/snapchat/android/stories/StoriesThumbnailType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Latv;->mStorySnaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Latv;->mPendingDownloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 104
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 93
    :pswitch_0
    iget-object v0, p0, Latv;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 96
    :pswitch_1
    iget-object v0, p0, Latv;->mStorySnaps:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 99
    :pswitch_2
    iget-object v0, p0, Latv;->mStorySnaps:Ljava/util/List;

    invoke-virtual {p7, p5}, Lapk;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lavx;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lakl;",
            ">;",
            "Lavx;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v2, Laah;

    invoke-direct {v2}, Laah;-><init>()V

    invoke-static {}, Lawo;->a()Lawo;

    move-result-object v3

    sget-object v4, Lavf;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lapk;

    invoke-direct {v7}, Lapk;-><init>()V

    new-instance v8, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v8}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    invoke-static {}, Lakn;->a()Lakn;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v9}, Latv;-><init>(Landroid/content/Context;Laah;Lawo;Ljava/util/concurrent/ExecutorService;Ljava/util/List;Lavx;Lapk;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lakn;)V

    .line 74
    return-void
.end method

.method private b(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Latv$2;

    invoke-direct {v0, p0, p1}, Latv$2;-><init>(Latv;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lbhp;->a(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Latv;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Latv;->b(Landroid/graphics/Bitmap;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Latv;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    move v3, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    .line 120
    invoke-virtual {v0}, Lakl;->au()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lakl;->ax()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 121
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 123
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 125
    goto :goto_1

    .line 127
    :cond_3
    if-lez v3, :cond_4

    .line 128
    const-string v0, "PIE_SLICE_BUILD_TIME"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    iput-object v0, p0, Latv;->mPieSliceBuildMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 129
    iget-object v0, p0, Latv;->mPieSliceBuildMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v4, "DownloadThumbnails"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 130
    iget-object v0, p0, Latv;->mPieSliceBuildMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v4, "CachedThumbnails"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 131
    iget-object v0, p0, Latv;->mPieSliceBuildMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 134
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    iget-object v0, p0, Latv;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    .line 136
    invoke-virtual {v0}, Lakl;->au()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v0}, Lakl;->ax()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 139
    iget-boolean v5, v0, Lakl;->mNeedsAuth:Z

    if-eqz v5, :cond_5

    if-eq v3, v8, :cond_5

    iget-object v5, p0, Latv;->mStudySettings:Lakn;

    const-string v6, "MULTI_THUMBNAIL"

    const-string v7, "ENABLE_MULTI_THUMBNAIL"

    invoke-virtual {v5, v6, v7, v2}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_6

    .line 140
    :cond_5
    iget-object v5, p0, Latv;->mThumbnailDownloader:Laah;

    invoke-virtual {v5, v0, p0}, Laah;->a(Lakl;Laah$a;)V

    goto :goto_2

    .line 142
    :cond_6
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 145
    :cond_7
    invoke-virtual {p0, v8}, Latv;->a(I)V

    goto :goto_2

    .line 149
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Latv;->mThumbnailDownloader:Laah;

    invoke-virtual {v0, v1, p0}, Laah;->a(Ljava/util/Collection;Laah$a;)V

    goto/16 :goto_0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Latv;->mPendingDownloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    mul-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Latv;->mMiscExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Latv$1;

    invoke-direct {v1, p0}, Latv$1;-><init>(Latv;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 175
    :cond_0
    return-void
.end method

.method protected abstract a(Landroid/graphics/Bitmap;)V
.end method

.method protected final b()V
    .locals 14

    .prologue
    .line 188
    const/4 v2, 0x0

    .line 191
    iget-object v0, p0, Latv;->mBitmapPool:Lawo;

    const/16 v1, 0x66

    const/16 v3, 0x66

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v3, v4}, Lawo;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    if-nez v0, :cond_b

    .line 193
    const/16 v0, 0x66

    const/16 v1, 0x66

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v6, v0

    .line 195
    :goto_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 197
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 198
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 200
    const/4 v1, 0x0

    .line 204
    iget-object v3, p0, Latv;->mStorySnaps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v7, v1

    move v3, v2

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lakl;

    .line 205
    iget-object v1, v2, Lakl;->mClientId:Ljava/lang/String;

    .line 208
    sget-object v4, Laxo;->MY_STORY_SNAP_THUMBNAIL_CACHE:Laxn;

    iget-object v8, p0, Latv;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v8, v1, v9, v11}, Laxn;->a(Landroid/content/Context;Ljava/lang/String;Laza;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 210
    if-nez v1, :cond_3

    .line 211
    invoke-virtual {v2}, Lakl;->av()Laza;

    move-result-object v1

    .line 212
    invoke-virtual {v2}, Lakl;->at()Ljava/lang/String;

    move-result-object v4

    .line 213
    if-nez v4, :cond_0

    .line 214
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lakl;->Y()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_1

    .line 220
    :cond_0
    sget-object v8, Laxo;->STORY_SNAP_RECEIVED_THUMBNAIL_CACHE:Laxn;

    invoke-virtual {v8, v4}, Laxn;->a(Ljava/lang/String;)[B

    move-result-object v8

    .line 221
    if-nez v8, :cond_1

    .line 222
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Lakl;->Y()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x1

    aput-object v4, v1, v2

    goto :goto_1

    .line 227
    :cond_1
    invoke-interface {v1, v8, v4}, Laza;->b([BLjava/lang/String;)[B

    move-result-object v1

    .line 232
    if-nez v1, :cond_2

    .line 233
    add-int/lit8 v1, v7, 0x1

    .line 234
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Lakl;->Y()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    const/4 v2, 0x1

    aput-object v4, v7, v2

    move v7, v1

    .line 236
    goto :goto_1

    .line 239
    :cond_2
    iget-object v3, p0, Latv;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1}, Lavp;->b(Landroid/content/Context;[B)Lawm;

    move-result-object v1

    .line 242
    iget-object v1, v1, Lawm;->mBitmap:Landroid/graphics/Bitmap;

    .line 246
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/16 v4, 0x66

    if-ne v3, v4, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/16 v4, 0x66

    if-eq v3, v4, :cond_a

    .line 247
    :cond_4
    const/16 v3, 0x66

    const/16 v4, 0x66

    const/4 v8, 0x0

    invoke-static {v1, v3, v4, v8}, Laws;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v9, v1

    .line 252
    :goto_2
    const/4 v8, 0x1

    .line 254
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/16 v1, 0x66

    if-ne v1, v3, :cond_5

    new-instance v1, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v11, 0x0

    int-to-float v12, v3

    int-to-float v3, v3

    invoke-direct {v1, v4, v11, v12, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 255
    :goto_3
    iget-object v3, p0, Latv;->mThumbnailType:Lcom/snapchat/android/stories/StoriesThumbnailType;

    sget-object v4, Lcom/snapchat/android/stories/StoriesThumbnailType;->OLDEST_SNAP_THUMBNAIL_WITHOUT_DECAY:Lcom/snapchat/android/stories/StoriesThumbnailType;

    if-ne v3, v4, :cond_6

    const/high16 v2, 0x3f800000    # 1.0f

    .line 257
    :goto_4
    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v3, v2

    .line 258
    const/high16 v2, -0x3d4c0000    # -90.0f

    sub-float/2addr v2, v3

    .line 261
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v9, v11, v12}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 262
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 263
    iget v12, v1, Landroid/graphics/RectF;->left:F

    iget v13, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 264
    invoke-virtual {v4, v11}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 265
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 266
    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 268
    iget-object v1, p0, Latv;->mBitmapPool:Lawo;

    invoke-virtual {v1, v9}, Lawo;->a(Landroid/graphics/Bitmap;)V

    move v3, v8

    .line 269
    goto/16 :goto_1

    .line 254
    :cond_5
    div-int/lit8 v1, v3, 0x2

    add-int/lit8 v3, v1, -0x33

    add-int/lit8 v4, v1, 0x33

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v11, v3

    int-to-float v3, v3

    int-to-float v12, v4

    int-to-float v4, v4

    invoke-direct {v1, v11, v3, v12, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_3

    .line 255
    :cond_6
    invoke-virtual {v2}, Lakl;->U()J

    move-result-wide v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v2, v12, v2

    long-to-float v2, v2

    const v3, 0x4a5bba00    # 3600000.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41c00000    # 24.0f

    sub-float v2, v3, v2

    const/high16 v3, 0x41c00000    # 24.0f

    div-float/2addr v2, v3

    goto :goto_4

    .line 271
    :cond_7
    iget-object v0, p0, Latv;->mPieSliceBuildMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-eqz v0, :cond_8

    .line 272
    iget-object v0, p0, Latv;->mPieSliceBuildMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "ThumbnailDecryptFailureCount"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 273
    iget-object v0, p0, Latv;->mPieSliceBuildMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 275
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Latv;->mPieSliceBuildMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 278
    if-eqz v3, :cond_9

    .line 279
    invoke-direct {p0, v6}, Latv;->b(Landroid/graphics/Bitmap;)V

    .line 283
    :goto_5
    return-void

    .line 281
    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Latv;->b(Landroid/graphics/Bitmap;)V

    goto :goto_5

    :cond_a
    move-object v9, v1

    goto/16 :goto_2

    :cond_b
    move-object v6, v0

    goto/16 :goto_0
.end method
