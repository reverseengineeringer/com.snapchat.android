.class public final Lawg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lawg$a;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lawg;

.field private static final TAG:Ljava/lang/String; = "BitmapPoolMonitor"

.field private static final VERBOSE:Z


# instance fields
.field private final mInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lawl;",
            ">;"
        }
    .end annotation
.end field

.field public final mMutex:Ljava/lang/Object;

.field private final mReleaseManager:Lcom/snapchat/android/util/debug/ReleaseManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lawg;

    invoke-direct {v0}, Lawg;-><init>()V

    sput-object v0, Lawg;->INSTANCE:Lawg;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lawg;-><init>(Lcom/snapchat/android/util/debug/ReleaseManager;)V

    .line 37
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/util/debug/ReleaseManager;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Ldl;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lawg;->mInfoMap:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lawg;->mMutex:Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Lawg;->mReleaseManager:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 42
    return-void
.end method

.method public static a()Lawg;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lawg;->INSTANCE:Lawg;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 205
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Lawl;
    .locals 3

    .prologue
    .line 187
    iget-object v1, p0, Lawg;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 189
    iget-object v2, p0, Lawg;->mInfoMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lawg;->mInfoMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawl;

    monitor-exit v1

    .line 192
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lawl;

    invoke-direct {v0, p1}, Lawl;-><init>(Landroid/graphics/Bitmap;)V

    monitor-exit v1

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(I)V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 128
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lawg;->b()Lawg$a;

    move-result-object v7

    .line 134
    const-string v0, "BitmapPoolMonitor"

    const-string v1, "Lost bitmaps: %d"

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, v7, Lawg$a;->mLostBitmaps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    const-string v0, "BitmapPoolMonitor"

    const-string v1, "Unused bitmaps: %d"

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, v7, Lawg$a;->mUnusedBitmaps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v0, v7, Lawg$a;->mUnusedBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawl;

    .line 141
    invoke-virtual {v0}, Lawl;->b()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 142
    if-eqz v6, :cond_5

    .line 143
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x13

    if-lt v9, v10, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v6

    .line 144
    :goto_2
    if-ltz p1, :cond_1

    invoke-virtual {v0}, Lawl;->a()I

    move-result v0

    if-gt v0, p1, :cond_3

    .line 145
    :cond_1
    add-int v0, v1, v6

    .line 146
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 143
    :cond_2
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    goto :goto_2

    .line 148
    :cond_3
    add-int v0, v4, v6

    .line 149
    add-int/lit8 v4, v5, 0x1

    :goto_3
    move v5, v4

    move v4, v0

    .line 152
    goto :goto_1

    .line 153
    :cond_4
    const-string v0, "BitmapPoolMonitor"

    const-string v6, "Bitmaps used less than %d times: %d total bytes %d "

    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v12

    invoke-static {v0, v6, v8}, Lcom/snapchat/android/Timber;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    const-string v0, "BitmapPoolMonitor"

    const-string v1, "Bitmaps used more than %d times: %d total bytes %d "

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    const-string v0, "BitmapPoolMonitor"

    const-string v1, "Currently used bitmaps: %d"

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, v7, Lawg$a;->mUsedBitmaps:Ljava/util/List;

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    move v0, v4

    move v4, v5

    goto :goto_3
.end method

.method public final a(Landroid/graphics/Bitmap;Lawl;)V
    .locals 3

    .prologue
    .line 198
    iget-object v1, p0, Lawg;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 200
    iget-object v2, p0, Lawg;->mInfoMap:Ljava/util/Map;

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Lawg$a;
    .locals 8

    .prologue
    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 163
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 164
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 165
    iget-object v5, p0, Lawg;->mMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 166
    :try_start_0
    iget-object v0, p0, Lawg;->mInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 167
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawl;

    .line 170
    invoke-virtual {v0}, Lawl;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 172
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 176
    :cond_0
    :try_start_1
    iget v1, v0, Lawl;->mAddedCount:I

    iget v7, v0, Lawl;->mRemovedCount:I

    if-le v1, v7, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 177
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 179
    :cond_2
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    new-instance v0, Lawg$a;

    invoke-direct {v0, p0, v2, v3, v4}, Lawg$a;-><init>(Lawg;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
