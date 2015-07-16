.class public final Laej;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lawj;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laej$c;,
        Laej$b;,
        Laej$a;
    }
.end annotation


# static fields
.field private static final m:Laej;


# instance fields
.field final a:Lcom/snapchat/android/discover/model/database/table/EditionTable;

.field public final b:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;

.field public final c:Lcom/snapchat/android/discover/model/database/table/DSnapTable;

.field public final d:Landroid/os/HandlerThread;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Laej$b;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laej$b;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroid/os/Handler;

.field public i:Landroid/content/Context;

.field public j:Landroid/content/ContentResolver;

.field k:Z

.field protected l:Ljava/lang/Runnable;

.field private final n:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;

.field private final o:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;

.field private final p:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

.field private final q:Laed;

.field private final r:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lban;

.field private final t:Lacp;

.field private final u:Ljava/lang/Object;

.field private final v:Laxn;

.field private final w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Laej$a;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ljava/lang/Runnable;

.field private final y:Ljava/lang/Runnable;

.field private final z:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Laej;

    invoke-direct {v0}, Laej;-><init>()V

    sput-object v0, Laej;->m:Laej;

    return-void
.end method

.method private constructor <init>()V
    .locals 13

    .prologue
    .line 128
    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;->d()Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->d()Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a()Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a()Lcom/snapchat/android/discover/model/database/table/EditionTable;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->a()Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->a()Lcom/snapchat/android/discover/model/database/table/DSnapTable;

    move-result-object v6

    invoke-static {}, Laed;->a()Laed;

    move-result-object v7

    sget-object v8, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    new-instance v9, Landroid/os/HandlerThread;

    const-string v0, "DiscoverRepository"

    const/16 v10, 0xa

    invoke-direct {v9, v0, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lban;

    invoke-direct {v10}, Lban;-><init>()V

    new-instance v11, Lacp;

    invoke-direct {v11}, Lacp;-><init>()V

    sget-object v12, Laec;->a:Laxn;

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Laej;-><init>(Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;Lcom/snapchat/android/discover/model/database/table/EditionTable;Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;Lcom/snapchat/android/discover/model/database/table/DSnapTable;Laed;Ljavax/inject/Provider;Landroid/os/HandlerThread;Lban;Lacp;Laxn;)V

    .line 141
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;Lcom/snapchat/android/discover/model/database/table/EditionTable;Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;Lcom/snapchat/android/discover/model/database/table/DSnapTable;Laed;Ljavax/inject/Provider;Landroid/os/HandlerThread;Lban;Lacp;Laxn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;",
            "Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;",
            "Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;",
            "Lcom/snapchat/android/discover/model/database/table/EditionTable;",
            "Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;",
            "Lcom/snapchat/android/discover/model/database/table/DSnapTable;",
            "Laed;",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;",
            "Landroid/os/HandlerThread;",
            "Lban;",
            "Lacp;",
            "Laxn;",
            ")V"
        }
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laej;->e:Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laej;->u:Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laej;->f:Ljava/util/Set;

    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laej;->w:Ljava/util/Set;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laej;->g:Ljava/util/Map;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Laej;->k:Z

    .line 746
    new-instance v0, Laej$2;

    invoke-direct {v0, p0}, Laej$2;-><init>(Laej;)V

    iput-object v0, p0, Laej;->l:Ljava/lang/Runnable;

    .line 761
    new-instance v0, Laej$3;

    invoke-direct {v0, p0}, Laej$3;-><init>(Laej;)V

    iput-object v0, p0, Laej;->x:Ljava/lang/Runnable;

    .line 768
    new-instance v0, Laej$4;

    invoke-direct {v0, p0}, Laej$4;-><init>(Laej;)V

    iput-object v0, p0, Laej;->y:Ljava/lang/Runnable;

    .line 775
    new-instance v0, Laej$5;

    invoke-direct {v0, p0}, Laej$5;-><init>(Laej;)V

    iput-object v0, p0, Laej;->z:Ljava/lang/Runnable;

    .line 157
    iput-object p1, p0, Laej;->n:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;

    .line 158
    iput-object p3, p0, Laej;->p:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    .line 159
    iput-object p2, p0, Laej;->o:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;

    .line 160
    iput-object p4, p0, Laej;->a:Lcom/snapchat/android/discover/model/database/table/EditionTable;

    .line 161
    iput-object p5, p0, Laej;->b:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;

    .line 162
    iput-object p6, p0, Laej;->c:Lcom/snapchat/android/discover/model/database/table/DSnapTable;

    .line 163
    iput-object p7, p0, Laej;->q:Laed;

    .line 164
    iput-object p8, p0, Laej;->r:Ljavax/inject/Provider;

    .line 165
    iput-object p9, p0, Laej;->d:Landroid/os/HandlerThread;

    .line 166
    iput-object p10, p0, Laej;->s:Lban;

    .line 167
    iput-object p11, p0, Laej;->t:Lacp;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Laej;->h:Landroid/os/Handler;

    .line 169
    iput-object p12, p0, Laej;->v:Laxn;

    .line 170
    return-void
.end method

.method public static a()Laej;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Laej;->m:Laej;

    return-object v0
.end method

.method static synthetic a(Laej;)V
    .locals 3

    .prologue
    .line 65
    iget-object v1, p0, Laej;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Laej;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Laej$b;

    iget-object v2, p0, Laej;->f:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laej$b;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Laej;->b([Laej$b;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 728
    if-nez p1, :cond_0

    .line 736
    :goto_0
    return-void

    .line 732
    :cond_0
    iget-object v1, p0, Laej;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 733
    :try_start_0
    iget-object v0, p0, Laej;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    iget-object v0, p0, Laej;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laej$b;

    invoke-interface {v0, p2}, Laej$b;->a(Ljava/util/List;)V

    .line 736
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/ChannelPage;
    .locals 7
    .annotation build Lawj;
    .end annotation

    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 316
    :try_start_0
    invoke-static {p1}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;->a(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/ChannelPage$a;

    move-result-object v2

    .line 317
    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/ChannelPage$a;->a()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v3

    .line 322
    iget-object v1, p0, Laej;->q:Laed;

    invoke-virtual {v1, v3}, Laed;->c(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v1

    iput-object v1, v2, Lcom/snapchat/android/discover/model/ChannelPage$a;->x:Lcom/snapchat/android/discover/model/MediaState;

    .line 323
    iget-object v1, p0, Laej;->v:Laxn;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Laxn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    iput-object v1, v2, Lcom/snapchat/android/discover/model/ChannelPage$a;->r:Ljava/lang/String;

    .line 327
    sget-object v1, Laec;->c:Laxn;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Laxn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 329
    sget-object v1, Laec;->c:Laxn;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Laxn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 332
    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 333
    sget-object v1, Laec;->c:Laxn;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Laxn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    :goto_0
    iput-object v4, v2, Lcom/snapchat/android/discover/model/ChannelPage$a;->s:Ljava/lang/String;

    .line 339
    iput-object v5, v2, Lcom/snapchat/android/discover/model/ChannelPage$a;->t:Ljava/lang/String;

    .line 340
    iput-object v1, v2, Lcom/snapchat/android/discover/model/ChannelPage$a;->u:Ljava/lang/String;

    .line 341
    iget-object v1, p0, Laej;->q:Laed;

    invoke-virtual {v1, v3}, Laed;->d(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v1

    iput-object v1, v2, Lcom/snapchat/android/discover/model/ChannelPage$a;->y:Lcom/snapchat/android/discover/model/MediaState;

    .line 342
    iget-object v1, p0, Laej;->q:Laed;

    invoke-virtual {v1, v3}, Laed;->e(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v1

    iput-object v1, v2, Lcom/snapchat/android/discover/model/ChannelPage$a;->z:Lcom/snapchat/android/discover/model/MediaState;

    .line 343
    iget-object v1, p0, Laej;->q:Laed;

    invoke-virtual {v1, v3}, Laed;->f(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v1

    iput-object v1, v2, Lcom/snapchat/android/discover/model/ChannelPage$a;->A:Lcom/snapchat/android/discover/model/MediaState;

    .line 345
    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/ChannelPage$a;->a()Lcom/snapchat/android/discover/model/ChannelPage;
    :try_end_0
    .catch Lacs; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 351
    :goto_1
    return-object v0

    :cond_0
    move-object v1, v0

    .line 336
    goto :goto_0

    .line 346
    :catch_0
    move-exception v1

    .line 347
    iget-object v2, p0, Laej;->s:Lban;

    iget-object v3, v1, Lacs;->a:Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2, v3}, Lban;->a(Ljava/lang/Throwable;)V

    .line 348
    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lacs;->b:Ljava/lang/String;

    const-string v3, "DISCOVER_BAD_PUBLISHER_DATA"

    invoke-static {v3}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "publisher_name"

    invoke-virtual {v3, v4, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "field"

    invoke-virtual {v2, v3, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    goto :goto_1
.end method

.method static synthetic b(Laej;)V
    .locals 3

    .prologue
    .line 65
    iget-object v1, p0, Laej;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Laej;->w:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Laej$a;

    iget-object v2, p0, Laej;->w:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laej$a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Laej;->b([Laej$a;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic c(Laej;)Laed;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Laej;->q:Laed;

    return-object v0
.end method

.method static synthetic d(Laej;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Laej;->i:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Laej;)Lcom/snapchat/android/discover/model/database/table/EditionTable;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Laej;->a:Lcom/snapchat/android/discover/model/database/table/EditionTable;

    return-object v0
.end method

.method static synthetic f(Laej;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Laej;->u:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g(Laej;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Laej;->r:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic h(Laej;)Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Laej;->k:Z

    return v0
.end method

.method static synthetic i(Laej;)Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Laej;->p:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/DSnapPage;
    .locals 25
    .annotation build Lawj;
    .end annotation

    .annotation build Lchd;
    .end annotation

    .prologue
    .line 281
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Laej;->o:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->ID:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->TYPE:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->POSITION:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->EDITION_ID:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->URL:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->HASH:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->AD_KEY:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->COLOR:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->AD_TYPE:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->AD_POSITION:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->AD_UNIT_ID:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->AD_TARGETING:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->k()Z

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->SHAREABLE:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    move v4, v2

    :goto_0
    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->TOP_SNAP_URI:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->TOP_SNAP_MEDIA_TYPE:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->TOP_SNAP_DOCKING:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->TOP_SNAP_MODE:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->TOP_SNAP_VIDEO_FIRST_FRAME_URI:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->TOP_SNAP_OVERLAY_URI:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->TOP_SNAP_OVERLAY_DOCKING:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/4 v2, 0x0

    if-eqz v3, :cond_11

    if-eqz v19, :cond_11

    new-instance v2, Lcom/snapchat/android/discover/model/DSnapPanel$a;

    invoke-direct {v2}, Lcom/snapchat/android/discover/model/DSnapPanel$a;-><init>()V

    iput-object v3, v2, Lcom/snapchat/android/discover/model/DSnapPanel$a;->a:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v0, v2, Lcom/snapchat/android/discover/model/DSnapPanel$a;->c:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static/range {v24 .. v24}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->valueOfIgnoreCase(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    move-result-object v3

    iput-object v3, v2, Lcom/snapchat/android/discover/model/DSnapPanel$a;->d:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    :cond_0
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/snapchat/android/discover/model/DSnapPanel$a;->a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$a;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/snapchat/android/discover/model/DSnapPanel$a;->j:Ljava/lang/String;

    if-eqz v20, :cond_1

    invoke-static/range {v20 .. v20}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->valueOfIgnoreCase(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    move-result-object v3

    iput-object v3, v2, Lcom/snapchat/android/discover/model/DSnapPanel$a;->g:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    :cond_1
    if-eqz v21, :cond_2

    invoke-static/range {v21 .. v21}, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;->valueOfIgnoreCase(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    move-result-object v3

    iput-object v3, v2, Lcom/snapchat/android/discover/model/DSnapPanel$a;->f:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    :cond_2
    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPanel$a;->a()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v2

    move-object v3, v2

    :goto_1
    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->LONGFORM_URI:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->LONGFORM_MEDIA_TYPE:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->LONGFORM_VIDEO_ID:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/4 v2, 0x0

    if-eqz v20, :cond_6

    if-nez v19, :cond_3

    if-eqz v21, :cond_6

    :cond_3
    new-instance v2, Lcom/snapchat/android/discover/model/DSnapPanel$a;

    invoke-direct {v2}, Lcom/snapchat/android/discover/model/DSnapPanel$a;-><init>()V

    move-object/from16 v0, v19

    iput-object v0, v2, Lcom/snapchat/android/discover/model/DSnapPanel$a;->a:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/snapchat/android/discover/model/DSnapPanel$a;->a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$a;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/snapchat/android/discover/model/DSnapPanel$a;->b:Ljava/lang/String;

    if-eqz v21, :cond_5

    invoke-virtual/range {v19 .. v19}, Lcom/snapchat/android/discover/model/DSnapPanel$a;->a()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v2

    iget-object v0, v5, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->c:Laed;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Laed;->a(Lcom/snapchat/android/discover/model/DSnapPanel;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v2

    sget-object v20, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    move-object/from16 v0, v20

    if-ne v2, v0, :cond_4

    iget-object v2, v5, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->d:Laee;

    iget-object v2, v2, Laee;->a:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbky;

    if-eqz v2, :cond_d

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/snapchat/android/discover/model/DSnapPanel$a;->i:Lbky;

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    :cond_4
    :goto_2
    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/snapchat/android/discover/model/DSnapPanel$a;->h:Lcom/snapchat/android/discover/model/MediaState;

    :cond_5
    invoke-virtual/range {v19 .. v19}, Lcom/snapchat/android/discover/model/DSnapPanel$a;->a()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v2

    :cond_6
    new-instance v5, Lcom/snapchat/android/discover/model/DSnapPage$a;

    invoke-direct {v5}, Lcom/snapchat/android/discover/model/DSnapPage$a;-><init>()V

    iput-object v6, v5, Lcom/snapchat/android/discover/model/DSnapPage$a;->a:Ljava/lang/String;

    iput-object v7, v5, Lcom/snapchat/android/discover/model/DSnapPage$a;->b:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcom/snapchat/android/discover/model/DSnapPage$a;->c:Ljava/lang/Integer;

    iput-object v9, v5, Lcom/snapchat/android/discover/model/DSnapPage$a;->e:Ljava/lang/String;

    iput-object v10, v5, Lcom/snapchat/android/discover/model/DSnapPage$a;->f:Ljava/lang/String;

    iput-object v11, v5, Lcom/snapchat/android/discover/model/DSnapPage$a;->g:Ljava/lang/String;

    iput-object v12, v5, Lcom/snapchat/android/discover/model/DSnapPage$a;->h:Ljava/lang/String;

    iput-object v13, v5, Lcom/snapchat/android/discover/model/DSnapPage$a;->i:Ljava/lang/String;

    iput-object v14, v5, Lcom/snapchat/android/discover/model/DSnapPage$a;->j:Ljava/lang/String;

    move/from16 v0, v16

    iput v0, v5, Lcom/snapchat/android/discover/model/DSnapPage$a;->d:I

    iput-boolean v4, v5, Lcom/snapchat/android/discover/model/DSnapPage$a;->q:Z

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v5, Lcom/snapchat/android/discover/model/DSnapPage$a;->l:Ljava/lang/Integer;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/snapchat/android/discover/model/DSnapPage$a;->o:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/snapchat/android/discover/model/DSnapPage$a;->p:Ljava/lang/String;

    if-eqz v3, :cond_7

    sget-object v4, Lcom/snapchat/android/discover/model/DSnapPage$Form;->TOP_SNAP:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4, v3}, Lcom/snapchat/android/discover/model/DSnapPage$a;->a(Ljava/lang/String;Lcom/snapchat/android/discover/model/DSnapPanel;)Lcom/snapchat/android/discover/model/DSnapPage$a;

    :cond_7
    if-eqz v2, :cond_8

    sget-object v3, Lcom/snapchat/android/discover/model/DSnapPage$Form;->LONGFORM:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v2}, Lcom/snapchat/android/discover/model/DSnapPage$a;->a(Ljava/lang/String;Lcom/snapchat/android/discover/model/DSnapPanel;)Lcom/snapchat/android/discover/model/DSnapPage$a;

    .line 282
    :cond_8
    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPage$a;->a()Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v3

    .line 287
    const/4 v2, 0x0

    .line 288
    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 289
    sget-object v2, Laec;->b:Laxn;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Laxn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 291
    :cond_9
    if-eqz v2, :cond_a

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "file://"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/snapchat/android/discover/model/DSnapPage$a;->k:Ljava/lang/String;

    .line 294
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Laej;->q:Laed;

    iget-object v4, v3, Lcom/snapchat/android/discover/model/DSnapPage;->k:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_e

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    :cond_b
    :goto_3
    iput-object v2, v5, Lcom/snapchat/android/discover/model/DSnapPage$a;->n:Lcom/snapchat/android/discover/model/MediaState;

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Laej;->q:Laed;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    iget-object v2, v2, Laed;->a:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/discover/model/MediaState;

    :goto_4
    if-eqz v2, :cond_10

    :goto_5
    iput-object v2, v5, Lcom/snapchat/android/discover/model/DSnapPage$a;->m:Lcom/snapchat/android/discover/model/MediaState;

    .line 296
    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPage$a;->a()Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v2

    .line 303
    :goto_6
    return-object v2

    .line 281
    :cond_c
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_0

    :cond_d
    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->GENERIC_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    goto/16 :goto_2

    .line 294
    :cond_e
    iget-object v2, v2, Laed;->c:Ljava/util/Map;

    iget-object v4, v3, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/discover/model/MediaState;

    if-nez v2, :cond_b

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_3

    .line 295
    :cond_f
    const/4 v2, 0x0

    goto :goto_4

    :cond_10
    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;
    :try_end_0
    .catch Lacs; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 297
    :catch_0
    move-exception v2

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Laej;->s:Lban;

    iget-object v4, v2, Lacs;->a:Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3, v4}, Lban;->a(Ljava/lang/Throwable;)V

    .line 299
    sget-object v3, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->ID:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->HASH:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnNumber()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Lacs;->b:Ljava/lang/String;

    const-string v5, "DISCOVER_BAD_CHUNK_DATA"

    invoke-static {v5}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v5

    const-string v6, "dsnap_id"

    invoke-virtual {v5, v6, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v5, "hash"

    invoke-virtual {v3, v5, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "field"

    invoke-virtual {v3, v4, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 303
    const/4 v2, 0x0

    goto :goto_6

    :cond_11
    move-object v3, v2

    goto/16 :goto_1
.end method

.method public final a(Laej$a;)V
    .locals 2

    .prologue
    .line 227
    iget-object v1, p0, Laej;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_0
    iget-object v0, p0, Laej;->w:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final varargs a([Laej$a;)V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Laej;->h:Landroid/os/Handler;

    new-instance v1, Laej$11;

    invoke-direct {v1, p0, p1}, Laej$11;-><init>(Laej;[Laej$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 487
    return-void
.end method

.method public final varargs a([Laej$b;)V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Laej;->h:Landroid/os/Handler;

    new-instance v1, Laej$12;

    invoke-direct {v1, p0, p1}, Laej$12;-><init>(Laej;[Laej$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 552
    return-void
.end method

.method public final varargs a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V
    .locals 3

    .prologue
    .line 371
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/snapchat/android/Timber;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 374
    iget-object v0, p0, Laej;->r:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 375
    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0, p1}, Lakp;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 378
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Laej;->h:Landroid/os/Handler;

    iget-object v1, p0, Laej;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 270
    return-void
.end method

.method public final b(Laej$a;)V
    .locals 2

    .prologue
    .line 237
    iget-object v1, p0, Laej;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_0
    iget-object v0, p0, Laej;->w:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 239
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final varargs b([Laej$a;)V
    .locals 11
    .annotation build Lawj;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 496
    array-length v0, p1

    if-nez v0, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    invoke-static {}, Lakr;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laej;->k:Z

    if-eqz v0, :cond_0

    .line 508
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    .line 510
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 514
    :try_start_0
    iget-object v0, p0, Laej;->j:Landroid/content/ContentResolver;

    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->b:Landroid/net/Uri;

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 517
    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 519
    :cond_2
    invoke-direct {p0, v1}, Laej;->b(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_3

    .line 521
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    .line 529
    :cond_4
    invoke-static {v1}, Lbgo;->a(Landroid/database/Cursor;)V

    .line 533
    array-length v1, p1

    move v0, v7

    :goto_1
    if-ge v0, v1, :cond_5

    aget-object v2, p1, v0

    .line 534
    invoke-interface {v2, v10}, Laej$a;->a(Ljava/util/List;)V

    .line 533
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 529
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    invoke-static {v1}, Lbgo;->a(Landroid/database/Cursor;)V

    throw v0

    .line 537
    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v7

    goto :goto_0

    .line 529
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public final varargs b([Laej$b;)V
    .locals 13
    .annotation build Lawj;
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 561
    array-length v0, p1

    if-nez v0, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    invoke-static {}, Lakr;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laej;->k:Z

    if-eqz v0, :cond_0

    .line 573
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    .line 574
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 580
    :try_start_0
    iget-object v0, p0, Laej;->j:Landroid/content/ContentResolver;

    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->c:Landroid/net/Uri;

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->EDITION_ID:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v11}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v11, 0x2c

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v11, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->POSITION:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v11}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 585
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 588
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 591
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 594
    :cond_2
    invoke-virtual {p0, v0}, Laej;->a(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v2

    .line 596
    if-eqz v2, :cond_4

    .line 600
    iget-object v3, v2, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 602
    invoke-direct {p0, v6, v1}, Laej;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 605
    iget-object v6, v2, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    .line 606
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 609
    :cond_3
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 618
    invoke-direct {p0, v6, v1}, Laej;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 623
    :cond_5
    invoke-static {v0}, Lbgo;->a(Landroid/database/Cursor;)V

    .line 627
    :goto_1
    array-length v1, p1

    move v0, v7

    :goto_2
    if-ge v0, v1, :cond_6

    aget-object v2, p1, v0

    .line 628
    invoke-interface {v2, v10}, Laej$b;->a(Ljava/util/List;)V

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 621
    :catch_0
    move-exception v0

    move-object v0, v6

    :goto_3
    invoke-static {v0}, Lbgo;->a(Landroid/database/Cursor;)V

    goto :goto_1

    .line 623
    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v6}, Lbgo;->a(Landroid/database/Cursor;)V

    throw v0

    .line 631
    :cond_6
    new-array v0, v12, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v7

    goto/16 :goto_0

    .line 623
    :catchall_1
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_4

    .line 621
    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v0, v6

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_3
.end method

.method public final c()V
    .locals 3
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 360
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/snapchat/android/Timber;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 364
    iget-object v0, p0, Laej;->h:Landroid/os/Handler;

    iget-object v1, p0, Laej;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 365
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Laej;->h:Landroid/os/Handler;

    iget-object v1, p0, Laej;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 451
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Laej;->h:Landroid/os/Handler;

    iget-object v1, p0, Laej;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 744
    return-void
.end method
