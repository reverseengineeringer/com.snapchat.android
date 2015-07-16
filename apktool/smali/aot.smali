.class public final Laot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Laot;


# instance fields
.field public final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Laos;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lbhk;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/graphics/Point;

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lbhl;

    invoke-direct {v0}, Lbhl;-><init>()V

    iget-object v0, v0, Lbhl;->mClock:Lbhk;

    invoke-direct {p0, v0}, Laot;-><init>(Lbhk;)V

    .line 68
    return-void
.end method

.method private constructor <init>(Lbhk;)V
    .locals 1
    .param p1    # Lbhk;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laot;->d:Ljava/util/Set;

    .line 61
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Laot;->b:Ljava/util/LinkedList;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laot;->f:Ljava/util/Set;

    .line 72
    iput-object p1, p0, Laot;->c:Lbhk;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Laot;->e:Landroid/graphics/Point;

    .line 74
    return-void
.end method

.method public static declared-synchronized a()Laot;
    .locals 2

    .prologue
    .line 78
    const-class v1, Laot;

    monitor-enter v1

    :try_start_0
    sget-object v0, Laot;->a:Laot;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Laot;

    invoke-direct {v0}, Laot;-><init>()V

    sput-object v0, Laot;->a:Laot;

    .line 81
    :cond_0
    sget-object v0, Laot;->a:Laot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/util/List;)V
    .locals 18
    .param p1    # Ljava/util/List;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    move-object/from16 v0, p0

    iget-object v3, v0, Laot;->b:Ljava/util/LinkedList;

    monitor-enter v3

    .line 129
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Laot;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v3

    .line 172
    :goto_0
    return-void

    .line 130
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 132
    move-object/from16 v0, p0

    iget-object v6, v0, Laot;->b:Ljava/util/LinkedList;

    monitor-enter v6

    .line 133
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Laot;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v7

    .line 135
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 138
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laos;

    .line 140
    iget-wide v4, v2, Laos;->c:J

    .line 141
    iget-wide v10, v2, Laos;->b:J

    .line 142
    const-wide/16 v12, -0x1

    cmp-long v3, v4, v12

    if-nez v3, :cond_2

    .line 146
    const-wide/32 v4, 0xea60

    add-long/2addr v4, v10

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 149
    :cond_2
    const-wide/16 v12, 0x1388

    add-long/2addr v12, v4

    .line 150
    const-wide/16 v14, 0x3e8

    add-long/2addr v10, v14

    .line 153
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 154
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 156
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v15, v16, v10

    if-ltz v15, :cond_3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v15, v16, v12

    if-gtz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Laot;->d:Ljava/util/Set;

    invoke-interface {v15, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 159
    move-object/from16 v0, p0

    iget-object v10, v0, Laot;->d:Ljava/util/Set;

    invoke-interface {v10, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Laos;->a(J)V

    iput-wide v8, v2, Laos;->b:J

    const-wide/16 v10, -0x1

    iput-wide v10, v2, Laos;->c:J

    .line 168
    :cond_4
    const-wide/16 v2, 0x2710

    add-long/2addr v2, v4

    cmp-long v2, v8, v2

    if-lez v2, :cond_1

    .line 169
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 172
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 130
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 172
    :cond_5
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Laos;)V
    .locals 2

    .prologue
    .line 108
    iget-object v1, p0, Laot;->b:Ljava/util/LinkedList;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, Laot;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 110
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v1, p0, Laot;->b:Ljava/util/LinkedList;

    monitor-enter v1

    .line 93
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Laot;->b:Ljava/util/LinkedList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "height"

    aput-object v2, v0, v1

    .line 187
    new-instance v1, Landroid/support/v4/content/CursorLoader;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "datetaken DESC LIMIT 5"

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 12

    .prologue
    .line 42
    check-cast p2, Landroid/database/Cursor;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lakr;->ag()J

    move-result-wide v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Laot;->e:Landroid/graphics/Point;

    if-nez v0, :cond_1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v0, v4, :cond_0

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    const-string v4, "window"

    invoke-virtual {v0, v4}, Lcom/snapchat/android/SnapchatApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_0
    iput-object v1, p0, Laot;->e:Landroid/graphics/Point;

    :cond_1
    move-wide v0, v2

    :cond_2
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v2, 0x3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v2, 0x1

    iget-object v9, p0, Laot;->e:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    if-eqz v9, :cond_3

    iget-object v9, p0, Laot;->e:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    if-eqz v9, :cond_3

    iget-object v2, p0, Laot;->e:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne v2, v7, :cond_6

    iget-object v2, p0, Laot;->e:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ne v2, v8, :cond_6

    const/4 v2, 0x1

    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    if-eqz v2, :cond_4

    const-wide/16 v10, 0x2710

    cmp-long v2, v8, v10

    if-gtz v2, :cond_4

    cmp-long v2, v4, v0

    if-lez v2, :cond_4

    iget-object v2, p0, Laot;->f:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v0, v4

    :cond_4
    iget-object v2, p0, Laot;->f:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v6}, Laot;->a(Ljava/util/List;)V

    invoke-static {v0, v1}, Lakr;->f(J)V

    :cond_5
    return-void

    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    return-void
.end method
