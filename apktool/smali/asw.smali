.class public abstract Lasw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lals$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lasw$3;,
        Lasw$a;
    }
.end annotation


# static fields
.field static final CACHED_THUMBNAIL_COUNT:Ljava/lang/String; = "CachedThumbnails"

.field static final DOWNLOAD_THUMBNAIL_COUNT:Ljava/lang/String; = "DownloadThumbnails"

.field private static final ENABLE_MULTI_THUMBNAIL_VARIABLE:Ljava/lang/String; = "ENABLE_MULTI_THUMBNAIL"

.field private static final MULTI_THUMBNAIL_STUDY_ID:Ljava/lang/String; = "MULTI_THUMBNAIL"

.field static final PIE_SLICE_BUILD_TIME_METRIC:Ljava/lang/String; = "PIE_SLICE_BUILD_TIME"

.field public static final SPONSORED_STORY_BITMAP_THUMBNAIL_SIZE:I = 0x5f

.field private static final TAG:Ljava/lang/String; = "BuildPieSliceTask"

.field public static final THUMBNAIL_SIZE:I = 0x66


# instance fields
.field private final mBitmapPool:Lavq;

.field private final mContext:Landroid/content/Context;

.field private final mEasyMetricFactory:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

.field private final mMediaDownloader:Lals;

.field private final mMiscExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mPendingDownloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mPieSliceBuildMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

.field private final mStorySnaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;"
        }
    .end annotation
.end field

.field private final mStudySettings:Lajt;

.field private final mThumbnailType:Lcom/snapchat/android/stories/StoriesThumbnailType;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lals;Lavq;Ljava/util/concurrent/ExecutorService;Ljava/util/List;Lauz;Laoo;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lajt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lals;",
            "Lavq;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;",
            "Lauz;",
            "Laoo;",
            "Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;",
            "Lajt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lasw;->mPieSliceBuildMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lasw;->mStorySnaps:Ljava/util/List;

    .line 86
    const-string v0, "stories is null"

    invoke-static {p5, v0}, Lck;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "stories size is 0"

    invoke-static {v0, v1}, Lck;->a(ZLjava/lang/Object;)V

    .line 88
    const-string v0, "context is null"

    invoke-static {p1, v0}, Lck;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lasw;->mContext:Landroid/content/Context;

    .line 89
    iput-object p3, p0, Lasw;->mBitmapPool:Lavq;

    .line 90
    iput-object p2, p0, Lasw;->mMediaDownloader:Lals;

    .line 91
    iput-object p4, p0, Lasw;->mMiscExecutor:Ljava/util/concurrent/ExecutorService;

    .line 92
    iget-object v0, p6, Lauz;->mType:Lcom/snapchat/android/stories/StoriesThumbnailType;

    iput-object v0, p0, Lasw;->mThumbnailType:Lcom/snapchat/android/stories/StoriesThumbnailType;

    .line 93
    iput-object p8, p0, Lasw;->mEasyMetricFactory:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 94
    iput-object p9, p0, Lasw;->mStudySettings:Lajt;

    .line 96
    sget-object v0, Lasw$3;->$SwitchMap$com$snapchat$android$stories$StoriesThumbnailType:[I

    iget-object v1, p0, Lasw;->mThumbnailType:Lcom/snapchat/android/stories/StoriesThumbnailType;

    invoke-virtual {v1}, Lcom/snapchat/android/stories/StoriesThumbnailType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lasw;->mStorySnaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lasw;->mPendingDownloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 109
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    :pswitch_0
    iget-object v0, p0, Lasw;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 101
    :pswitch_1
    iget-object v0, p0, Lasw;->mStorySnaps:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    :pswitch_2
    iget-object v0, p0, Lasw;->mStorySnaps:Ljava/util/List;

    invoke-virtual {p7, p5}, Laoo;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lauz;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;",
            "Lauz;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v2, Lals;

    invoke-direct {v2}, Lals;-><init>()V

    invoke-static {}, Lavq;->a()Lavq;

    move-result-object v3

    sget-object v4, Lauh;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Laoo;

    invoke-direct {v7}, Laoo;-><init>()V

    new-instance v8, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v8}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    invoke-static {}, Lajt;->a()Lajt;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v9}, Lasw;-><init>(Landroid/content/Context;Lals;Lavq;Ljava/util/concurrent/ExecutorService;Ljava/util/List;Lauz;Laoo;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lajt;)V

    .line 79
    return-void
.end method

.method private a(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lajr;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 292
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 293
    iget-object v0, v0, Lajr;->mMediaId:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 295
    :cond_0
    new-instance v0, Lasw$a;

    invoke-direct {v0, p0}, Lasw$a;-><init>(Lasw;)V

    invoke-virtual {v0, v1}, Lasw$a;->a(Ljava/util/List;)Lbjo;

    move-result-object v0

    invoke-static {v0}, Lts;->a(Lbgy;)Lbgy;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lasw;->mPendingDownloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    mul-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lasw;->mMiscExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lasw$2;

    invoke-direct {v1, p0}, Lasw$2;-><init>(Lasw;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 198
    :cond_0
    return-void
.end method

.method private b(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lasw$1;

    invoke-direct {v0, p0, p1}, Lasw$1;-><init>(Lasw;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 116
    iget-object v0, p0, Lasw;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 117
    invoke-direct {p0, v9}, Lasw;->b(Landroid/graphics/Bitmap;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lasw;->mStorySnaps:Ljava/util/List;

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

    check-cast v0, Lajr;

    .line 125
    invoke-virtual {v0}, Lajr;->az()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lajr;->aC()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 126
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 128
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 130
    goto :goto_1

    .line 132
    :cond_3
    if-lez v3, :cond_4

    .line 133
    const-string v0, "PIE_SLICE_BUILD_TIME"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    iput-object v0, p0, Lasw;->mPieSliceBuildMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 134
    iget-object v0, p0, Lasw;->mPieSliceBuildMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v4, "DownloadThumbnails"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 135
    iget-object v0, p0, Lasw;->mPieSliceBuildMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v4, "CachedThumbnails"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 136
    iget-object v0, p0, Lasw;->mPieSliceBuildMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 139
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    iget-object v0, p0, Lasw;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 141
    invoke-virtual {v0}, Lajr;->az()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v0}, Lajr;->aC()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 142
    iget-boolean v5, v0, Lajr;->mNeedsAuth:Z

    if-nez v5, :cond_5

    .line 143
    iget-object v5, p0, Lasw;->mMediaDownloader:Lals;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lajr;->aC()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0, v9, p0}, Lals;->a(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Object;Lals$a;)V

    goto :goto_2

    .line 145
    :cond_5
    if-eq v3, v8, :cond_6

    iget-object v5, p0, Lasw;->mStudySettings:Lajt;

    const-string v6, "MULTI_THUMBNAIL"

    const-string v7, "ENABLE_MULTI_THUMBNAIL"

    invoke-virtual {v5, v6, v7, v2}, Lajt;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_7

    .line 146
    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 148
    iget-object v5, p0, Lasw;->mMediaDownloader:Lals;

    invoke-static {}, Lajr;->au()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0}, Lasw;->a(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v0, v6, v7, p0}, Lals;->a(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Object;Lals$a;)V

    goto :goto_2

    .line 151
    :cond_7
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 154
    :cond_8
    invoke-direct {p0, v8}, Lasw;->a(I)V

    goto :goto_2

    .line 158
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lasw;->mMediaDownloader:Lals;

    invoke-static {}, Lajr;->au()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1}, Lasw;->a(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p0}, Lals;->a(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Object;Lals$a;)V

    goto/16 :goto_0
.end method

.method public final a(Lals$b;)V
    .locals 1

    .prologue
    .line 176
    iget v0, p1, Lals$b;->c:I

    invoke-direct {p0, v0}, Lasw;->a(I)V

    .line 177
    return-void
.end method

.method protected abstract a(Landroid/graphics/Bitmap;)V
.end method

.method protected final b()V
    .locals 14

    .prologue
    .line 202
    iget-object v0, p0, Lasw;->mPieSliceBuildMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lasw;->mPieSliceBuildMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 205
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lasw;->mPieSliceBuildMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 207
    const/4 v8, 0x0

    .line 208
    iget-object v0, p0, Lasw;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lasw;->mStorySnaps:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    invoke-virtual {v0}, Lajr;->aw()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v6, v0

    .line 211
    :goto_0
    iget-object v0, p0, Lasw;->mBitmapPool:Lavq;

    const/16 v1, 0x66

    const/16 v2, 0x66

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2, v3}, Lavq;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 212
    if-nez v0, :cond_c

    .line 213
    const/16 v0, 0x66

    const/16 v1, 0x66

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v7, v0

    .line 215
    :goto_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 217
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 218
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 220
    if-eqz v6, :cond_1

    .line 221
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iget-object v1, p0, Lasw;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v1, v2, v3, v4, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, -0x3c1f0000    # -450.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 224
    :cond_1
    if-eqz v6, :cond_3

    const/16 v1, 0x5f

    move v6, v1

    .line 226
    :goto_2
    iget-object v1, p0, Lasw;->mStorySnaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v3, v8

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lajr;

    .line 227
    iget-object v1, v2, Lajr;->mClientId:Ljava/lang/String;

    .line 230
    sget-object v4, Lawq;->MY_STORY_SNAP_THUMBNAIL_CACHE:Lawp;

    iget-object v5, p0, Lasw;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v5, v1, v8, v9}, Lawp;->a(Landroid/content/Context;Ljava/lang/String;Layc;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 232
    if-nez v1, :cond_5

    .line 233
    invoke-virtual {v2}, Lajr;->aA()Layc;

    move-result-object v1

    .line 234
    invoke-virtual {v2}, Lajr;->av()Ljava/lang/String;

    move-result-object v4

    .line 235
    if-nez v4, :cond_4

    .line 236
    const-string v0, "BuildPieSliceTask"

    const-string v1, "Failed to load thumbnail for %s from cache because key is null"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lajr;->aa()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    :goto_4
    return-void

    .line 208
    :cond_2
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_0

    .line 224
    :cond_3
    const/16 v1, 0x66

    move v6, v1

    goto :goto_2

    .line 241
    :cond_4
    sget-object v5, Lawq;->STORY_SNAP_RECEIVED_THUMBNAIL_CACHE:Lawp;

    iget-object v8, p0, Lasw;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v5, v8, v4, v1, v9}, Lawp;->a(Landroid/content/Context;Ljava/lang/String;Layc;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 243
    if-nez v1, :cond_5

    .line 244
    const-string v1, "BuildPieSliceTask"

    const-string v5, "Failed to load thumbnail for %s with key %s from cache"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v2}, Lajr;->aa()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    const/4 v2, 0x1

    aput-object v4, v8, v2

    invoke-static {v1, v5, v8}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 251
    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v6, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v6, :cond_b

    .line 252
    :cond_6
    invoke-static {v1, v6, v6}, Lavu;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v9, v1

    .line 257
    :goto_5
    const/4 v8, 0x1

    .line 259
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v6, v3, :cond_7

    new-instance v1, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v12, v3

    int-to-float v3, v3

    invoke-direct {v1, v4, v5, v12, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 260
    :goto_6
    iget-object v3, p0, Lasw;->mThumbnailType:Lcom/snapchat/android/stories/StoriesThumbnailType;

    sget-object v4, Lcom/snapchat/android/stories/StoriesThumbnailType;->OLDEST_SNAP_THUMBNAIL_WITHOUT_DECAY:Lcom/snapchat/android/stories/StoriesThumbnailType;

    if-ne v3, v4, :cond_8

    const/high16 v2, 0x3f800000    # 1.0f

    .line 262
    :goto_7
    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v3, v2

    .line 263
    const/high16 v2, -0x3d4c0000    # -90.0f

    sub-float/2addr v2, v3

    .line 266
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v9, v5, v12}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 267
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 268
    iget v12, v1, Landroid/graphics/RectF;->left:F

    iget v13, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v12, v13}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 269
    invoke-virtual {v4, v5}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 270
    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 271
    const/4 v4, 0x1

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 273
    iget-object v1, p0, Lasw;->mBitmapPool:Lavq;

    invoke-virtual {v1, v9}, Lavq;->a(Landroid/graphics/Bitmap;)V

    move v3, v8

    .line 274
    goto/16 :goto_3

    .line 259
    :cond_7
    div-int/lit8 v1, v6, 0x2

    div-int/lit8 v3, v3, 0x2

    sub-int v4, v3, v1

    add-int/2addr v3, v1

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v5, v4

    int-to-float v4, v4

    int-to-float v12, v3

    int-to-float v3, v3

    invoke-direct {v1, v5, v4, v12, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_6

    .line 260
    :cond_8
    invoke-virtual {v2}, Lajr;->W()J

    move-result-wide v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v2, v4, v2

    long-to-float v2, v2

    const v3, 0x4a5bba00    # 3600000.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41c00000    # 24.0f

    sub-float v2, v3, v2

    const/high16 v3, 0x41c00000    # 24.0f

    div-float/2addr v2, v3

    goto :goto_7

    .line 277
    :cond_9
    if-eqz v3, :cond_a

    .line 278
    invoke-direct {p0, v7}, Lasw;->b(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 280
    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lasw;->b(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    :cond_b
    move-object v9, v1

    goto/16 :goto_5

    :cond_c
    move-object v7, v0

    goto/16 :goto_1
.end method
