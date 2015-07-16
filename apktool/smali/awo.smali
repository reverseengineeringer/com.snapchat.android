.class public final Lawo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lbxs;
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x6

.field private static final TAG:Ljava/lang/String; = "BitmapPool"

.field private static final sInstance:Lawo;


# instance fields
.field public final mBitmapCache:Ljava/util/PriorityQueue;
    .annotation runtime Lbxp;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public final mMonitor:Laxe;

.field public final mMutex:Ljava/lang/Object;

.field private final mReleaseManager:Lcom/snapchat/android/util/debug/ReleaseManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lawo;

    invoke-direct {v0}, Lawo;-><init>()V

    sput-object v0, Lawo;->sInstance:Lawo;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Laxe;->a()Laxe;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lawo;-><init>(Laxe;Lcom/snapchat/android/util/debug/ReleaseManager;)V

    .line 50
    return-void
.end method

.method private constructor <init>(Laxe;Lcom/snapchat/android/util/debug/ReleaseManager;)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x6

    new-instance v2, Lawr;

    invoke-direct {v2}, Lawr;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lawo;->mBitmapCache:Ljava/util/PriorityQueue;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lawo;->mMutex:Ljava/lang/Object;

    .line 54
    iput-object p1, p0, Lawo;->mMonitor:Laxe;

    .line 55
    iput-object p2, p0, Lawo;->mReleaseManager:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 56
    return-void
.end method

.method public static a()Lawo;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lawo;->sInstance:Lawo;

    return-object v0
.end method


# virtual methods
.method public final a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 100
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 101
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 102
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 103
    iput-object p3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 104
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 106
    invoke-virtual {p0, v0, v2}, Lawo;->a(Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 9
    .param p1    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    iget-object v4, p0, Lawo;->mMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 131
    :try_start_0
    iget-object v0, p0, Lawo;->mBitmapCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 132
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 133
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 134
    iget-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    sget-object v7, Laws$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v6}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown Bitmap config."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    move v1, v3

    .line 134
    :goto_0
    if-eqz v1, :cond_8

    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v1, v6, :cond_7

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v1, v6, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v1, v6, :cond_4

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lawo;->mMonitor:Laxe;

    invoke-static {}, Laxe;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Laxe;->mMutex:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, v0}, Laxe;->a(Landroid/graphics/Bitmap;)Laxj;

    move-result-object v6

    invoke-virtual {v6, v2}, Laxj;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v6}, Laxe;->a(Landroid/graphics/Bitmap;Laxj;)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 138
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 139
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 140
    monitor-exit v4

    .line 145
    :goto_2
    return-object v0

    .line 134
    :pswitch_1
    if-ne v6, v1, :cond_2

    invoke-static {v6}, Laws;->a(Landroid/graphics/Bitmap$Config;)I

    move-result v6

    invoke-static {v1}, Laws;->a(Landroid/graphics/Bitmap$Config;)I

    move-result v1

    if-lt v6, v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v1, v6

    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v7, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v6, v7

    mul-int/2addr v1, v6

    iget-object v6, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v6}, Laws;->a(Landroid/graphics/Bitmap$Config;)I

    move-result v6

    mul-int/2addr v1, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v6

    if-gt v1, v6, :cond_5

    iget-object v6, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v6

    if-gt v1, v6, :cond_6

    move v1, v3

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v1, v6, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v1, v6, :cond_8

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v1, v3, :cond_8

    move v1, v3

    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_1

    .line 135
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 143
    :cond_9
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 144
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->c()Z

    .line 145
    const/4 v0, 0x0

    goto :goto_2

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(I)V
    .locals 5

    .prologue
    .line 156
    iget-object v1, p0, Lawo;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_0
    iget-object v0, p0, Lawo;->mMonitor:Laxe;

    invoke-virtual {v0, p1}, Laxe;->a(I)V

    .line 158
    iget-object v0, p0, Lawo;->mMonitor:Laxe;

    invoke-virtual {v0}, Laxe;->b()Laxe$a;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Laxe$a;->mUnusedBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxj;

    invoke-virtual {v0}, Laxj;->a()I

    move-result v4

    if-gt v4, p1, :cond_0

    invoke-virtual {v0}, Laxj;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 160
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 161
    iget-object v3, p0, Lawo;->mBitmapCache:Ljava/util/PriorityQueue;

    invoke-virtual {v3, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 63
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lawo;->mMonitor:Laxe;

    invoke-static {}, Laxe;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Laxe;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, p1}, Laxe;->a(Landroid/graphics/Bitmap;)Laxj;

    move-result-object v3

    iget v4, v3, Laxj;->mAddedCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Laxj;->mAddedCount:I

    :goto_1
    iget-object v4, v3, Laxj;->mAddedList:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->size()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_2

    iget-object v4, v3, Laxj;->mAddedList:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v4, v3, Laxj;->mAddedList:Ljava/util/Deque;

    invoke-interface {v4, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v3}, Laxe;->a(Landroid/graphics/Bitmap;Laxj;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    new-instance v0, Lawo$1;

    invoke-direct {v0, p0, p1}, Lawo$1;-><init>(Lawo;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lbhp;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
