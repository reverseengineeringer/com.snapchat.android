.class public final Ladj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lavl;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ladj$c;,
        Ladj$b;,
        Ladj$a;
    }
.end annotation


# static fields
.field private static final l:Ladj;


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
            "Ladj$b;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroid/os/Handler;

.field public h:Landroid/content/Context;

.field public i:Landroid/content/ContentResolver;

.field protected j:Ljava/lang/Runnable;

.field public final k:Ljava/lang/Runnable;

.field private final m:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;

.field private final n:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;

.field private final o:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

.field private final p:Ladd;

.field private final q:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lazo;

.field private final s:Labp;

.field private final t:Ljava/lang/Object;

.field private final u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ladj$a;",
            ">;"
        }
    .end annotation
.end field

.field private v:Z

.field private final w:Ljava/lang/Runnable;

.field private final x:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Ladj;

    invoke-direct {v0}, Ladj;-><init>()V

    sput-object v0, Ladj;->l:Ladj;

    return-void
.end method

.method private constructor <init>()V
    .locals 12

    .prologue
    .line 121
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

    invoke-static {}, Ladd;->a()Ladd;

    move-result-object v7

    sget-object v8, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    new-instance v9, Landroid/os/HandlerThread;

    const-string v0, "DiscoverRepository"

    const/16 v10, 0xa

    invoke-direct {v9, v0, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lazo;

    invoke-direct {v10}, Lazo;-><init>()V

    new-instance v11, Labp;

    invoke-direct {v11}, Labp;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Ladj;-><init>(Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;Lcom/snapchat/android/discover/model/database/table/EditionTable;Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;Lcom/snapchat/android/discover/model/database/table/DSnapTable;Ladd;Ljavax/inject/Provider;Landroid/os/HandlerThread;Lazo;Labp;)V

    .line 133
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;Lcom/snapchat/android/discover/model/database/table/EditionTable;Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;Lcom/snapchat/android/discover/model/database/table/DSnapTable;Ladd;Ljavax/inject/Provider;Landroid/os/HandlerThread;Lazo;Labp;)V
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
            "Ladd;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;",
            "Landroid/os/HandlerThread;",
            "Lazo;",
            "Labp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ladj;->e:Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ladj;->t:Ljava/lang/Object;

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ladj;->f:Ljava/util/Set;

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ladj;->u:Ljava/util/Set;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Ladj;->v:Z

    .line 604
    new-instance v0, Ladj$12;

    invoke-direct {v0, p0}, Ladj$12;-><init>(Ladj;)V

    iput-object v0, p0, Ladj;->j:Ljava/lang/Runnable;

    .line 619
    new-instance v0, Ladj$2;

    invoke-direct {v0, p0}, Ladj$2;-><init>(Ladj;)V

    iput-object v0, p0, Ladj;->w:Ljava/lang/Runnable;

    .line 626
    new-instance v0, Ladj$3;

    invoke-direct {v0, p0}, Ladj$3;-><init>(Ladj;)V

    iput-object v0, p0, Ladj;->x:Ljava/lang/Runnable;

    .line 633
    new-instance v0, Ladj$4;

    invoke-direct {v0, p0}, Ladj$4;-><init>(Ladj;)V

    iput-object v0, p0, Ladj;->k:Ljava/lang/Runnable;

    .line 148
    iput-object p1, p0, Ladj;->m:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;

    .line 149
    iput-object p3, p0, Ladj;->o:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    .line 150
    iput-object p2, p0, Ladj;->n:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;

    .line 151
    iput-object p4, p0, Ladj;->a:Lcom/snapchat/android/discover/model/database/table/EditionTable;

    .line 152
    iput-object p5, p0, Ladj;->b:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;

    .line 153
    iput-object p6, p0, Ladj;->c:Lcom/snapchat/android/discover/model/database/table/DSnapTable;

    .line 154
    iput-object p7, p0, Ladj;->p:Ladd;

    .line 155
    iput-object p8, p0, Ladj;->q:Ljavax/inject/Provider;

    .line 156
    iput-object p9, p0, Ladj;->d:Landroid/os/HandlerThread;

    .line 157
    iput-object p10, p0, Ladj;->r:Lazo;

    .line 158
    iput-object p11, p0, Ladj;->s:Labp;

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Ladj;->g:Landroid/os/Handler;

    .line 160
    return-void
.end method

.method public static a()Ladj;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Ladj;->l:Ladj;

    return-object v0
.end method

.method static synthetic a(Ladj;)V
    .locals 3

    .prologue
    .line 60
    iget-object v1, p0, Ladj;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ladj;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ladj$b;

    iget-object v2, p0, Ladj;->f:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ladj$b;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Ladj;->b([Ladj$b;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Ladj;)V
    .locals 3

    .prologue
    .line 60
    iget-object v1, p0, Ladj;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ladj;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ladj$a;

    iget-object v2, p0, Ladj;->u:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ladj$a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Ladj;->b([Ladj$a;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic c(Ladj;)Ladd;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ladj;->p:Ladd;

    return-object v0
.end method

.method static synthetic d(Ladj;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ladj;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Ladj;)Lcom/snapchat/android/discover/model/database/table/EditionTable;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ladj;->a:Lcom/snapchat/android/discover/model/database/table/EditionTable;

    return-object v0
.end method

.method static synthetic f(Ladj;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ladj;->t:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g(Ladj;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ladj;->q:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic h(Ladj;)Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Ladj;->v:Z

    return v0
.end method

.method static synthetic i(Ladj;)Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ladj;->o:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/DSnapPage;
    .locals 25
    .annotation build Lavl;
    .end annotation

    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 250
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Ladj;->n:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;

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

    iget-object v0, v5, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->c:Ladd;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ladd;->a(Lcom/snapchat/android/discover/model/DSnapPanel;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v2

    sget-object v20, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    move-object/from16 v0, v20

    if-ne v2, v0, :cond_4

    iget-object v2, v5, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->d:Lade;

    iget-object v2, v2, Lade;->a:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbjx;

    if-eqz v2, :cond_d

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/snapchat/android/discover/model/DSnapPanel$a;->i:Lbjx;

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

    .line 251
    :cond_8
    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPage$a;->a()Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v3

    .line 256
    const/4 v2, 0x0

    .line 257
    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 258
    sget-object v2, Ladc;->b:Lawp;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lawp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 260
    :cond_9
    if-eqz v2, :cond_a

    .line 261
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

    .line 263
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Ladj;->p:Ladd;

    iget-object v4, v3, Lcom/snapchat/android/discover/model/DSnapPage;->k:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_e

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    :cond_b
    :goto_3
    iput-object v2, v5, Lcom/snapchat/android/discover/model/DSnapPage$a;->n:Lcom/snapchat/android/discover/model/MediaState;

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Ladj;->p:Ladd;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    iget-object v2, v2, Ladd;->a:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/discover/model/MediaState;

    :goto_4
    if-eqz v2, :cond_10

    :goto_5
    iput-object v2, v5, Lcom/snapchat/android/discover/model/DSnapPage$a;->m:Lcom/snapchat/android/discover/model/MediaState;

    .line 265
    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPage$a;->a()Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v2

    .line 272
    :goto_6
    return-object v2

    .line 250
    :cond_c
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_0

    :cond_d
    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->GENERIC_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    goto/16 :goto_2

    .line 263
    :cond_e
    iget-object v2, v2, Ladd;->c:Ljava/util/Map;

    iget-object v4, v3, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/discover/model/MediaState;

    if-nez v2, :cond_b

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_3

    .line 264
    :cond_f
    const/4 v2, 0x0

    goto :goto_4

    :cond_10
    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;
    :try_end_0
    .catch Labs; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 266
    :catch_0
    move-exception v2

    .line 267
    move-object/from16 v0, p0

    iget-object v3, v0, Ladj;->r:Lazo;

    iget-object v4, v2, Labs;->a:Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3, v4}, Lazo;->a(Ljava/lang/Throwable;)V

    .line 268
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

    iget-object v2, v2, Labs;->b:Ljava/lang/String;

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

    .line 272
    const/4 v2, 0x0

    goto :goto_6

    :cond_11
    move-object v3, v2

    goto/16 :goto_1
.end method

.method public final a(Ladj$a;)V
    .locals 2

    .prologue
    .line 217
    iget-object v1, p0, Ladj;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_0
    iget-object v0, p0, Ladj;->u:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final varargs a([Ladj$a;)V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Ladj;->g:Landroid/os/Handler;

    new-instance v1, Ladj$10;

    invoke-direct {v1, p0, p1}, Ladj$10;-><init>(Ladj;[Ladj$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 456
    return-void
.end method

.method public final varargs a([Ladj$b;)V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Ladj;->g:Landroid/os/Handler;

    new-instance v1, Ladj$11;

    invoke-direct {v1, p0, p1}, Ladj$11;-><init>(Ladj;[Ladj$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 521
    return-void
.end method

.method public final varargs a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V
    .locals 5

    .prologue
    .line 340
    const-string v0, "DiscoverRepository"

    const-string v1, "Persisting data model changed from %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/snapchat/android/Timber;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    iget-object v0, p0, Ladj;->q:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    .line 344
    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0, p1}, Lajv;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 347
    :cond_0
    return-void
.end method

.method public final b(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/ChannelPage;
    .locals 7
    .annotation build Lavl;
    .end annotation

    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 285
    :try_start_0
    invoke-static {p1}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;->a(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/ChannelPage$a;

    move-result-object v2

    .line 286
    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/ChannelPage$a;->a()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v3

    .line 290
    sget-object v1, Ladc;->a:Lawp;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lawp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    iput-object v1, v2, Lcom/snapchat/android/discover/model/ChannelPage$a;->q:Ljava/lang/String;

    .line 293
    iget-object v1, p0, Ladj;->p:Ladd;

    invoke-virtual {v1, v3}, Ladd;->c(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v1

    iput-object v1, v2, Lcom/snapchat/android/discover/model/ChannelPage$a;->w:Lcom/snapchat/android/discover/model/MediaState;

    .line 296
    sget-object v1, Ladc;->c:Lawp;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lawp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 298
    sget-object v1, Ladc;->c:Lawp;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lawp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 301
    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 302
    sget-object v1, Ladc;->c:Lawp;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lawp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    :goto_0
    iput-object v4, v2, Lcom/snapchat/android/discover/model/ChannelPage$a;->r:Ljava/lang/String;

    .line 308
    iput-object v5, v2, Lcom/snapchat/android/discover/model/ChannelPage$a;->s:Ljava/lang/String;

    .line 309
    iput-object v1, v2, Lcom/snapchat/android/discover/model/ChannelPage$a;->t:Ljava/lang/String;

    .line 310
    iget-object v1, p0, Ladj;->p:Ladd;

    invoke-virtual {v1, v3}, Ladd;->d(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v1

    iput-object v1, v2, Lcom/snapchat/android/discover/model/ChannelPage$a;->x:Lcom/snapchat/android/discover/model/MediaState;

    .line 311
    iget-object v1, p0, Ladj;->p:Ladd;

    invoke-virtual {v1, v3}, Ladd;->e(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v1

    iput-object v1, v2, Lcom/snapchat/android/discover/model/ChannelPage$a;->y:Lcom/snapchat/android/discover/model/MediaState;

    .line 312
    iget-object v1, p0, Ladj;->p:Ladd;

    invoke-virtual {v1, v3}, Ladd;->f(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v1

    iput-object v1, v2, Lcom/snapchat/android/discover/model/ChannelPage$a;->z:Lcom/snapchat/android/discover/model/MediaState;

    .line 314
    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/ChannelPage$a;->a()Lcom/snapchat/android/discover/model/ChannelPage;
    :try_end_0
    .catch Labs; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 320
    :goto_1
    return-object v0

    :cond_0
    move-object v1, v0

    .line 305
    goto :goto_0

    .line 315
    :catch_0
    move-exception v1

    .line 316
    iget-object v2, p0, Ladj;->r:Lazo;

    iget-object v3, v1, Labs;->a:Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2, v3}, Lazo;->a(Ljava/lang/Throwable;)V

    .line 317
    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Labs;->b:Ljava/lang/String;

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

.method public final b()V
    .locals 5
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 329
    const-string v0, "DiscoverRepository"

    const-string v1, "Signaling data model changed from %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/snapchat/android/Timber;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    iget-object v0, p0, Ladj;->g:Landroid/os/Handler;

    iget-object v1, p0, Ladj;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 334
    return-void
.end method

.method public final varargs b([Ladj$a;)V
    .locals 11
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 465
    array-length v0, p1

    if-nez v0, :cond_0

    .line 466
    const-string v0, "DiscoverRepository"

    const-string v1, "Skipping query of channel repository - no listeners were specified."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-static {}, Lajx;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ladj;->v:Z

    if-nez v0, :cond_2

    .line 473
    :cond_1
    const-string v0, "DiscoverRepository"

    const-string v1, "Skipping query of channel repository - user is not logged in."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 477
    :cond_2
    const-string v0, "DiscoverRepository"

    const-string v1, "Beginning refresh of channel repository."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    .line 479
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 483
    :try_start_0
    iget-object v0, p0, Ladj;->i:Landroid/content/ContentResolver;

    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->b:Landroid/net/Uri;

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 486
    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 488
    :cond_3
    invoke-virtual {p0, v1}, Ladj;->b(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v0

    .line 489
    if-eqz v0, :cond_5

    .line 490
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 498
    :cond_4
    invoke-static {v1}, Lbfo;->a(Landroid/database/Cursor;)V

    .line 502
    array-length v1, p1

    move v0, v7

    :goto_2
    if-ge v0, v1, :cond_6

    aget-object v2, p1, v0

    .line 503
    invoke-interface {v2, v10}, Ladj$a;->a(Ljava/util/List;)V

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 492
    :cond_5
    :try_start_2
    const-string v0, "DiscoverRepository"

    const-string v2, "Invalid ChannelPage found in queryChannelList!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 498
    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lbfo;->a(Landroid/database/Cursor;)V

    throw v0

    .line 506
    :cond_6
    const-string v0, "DiscoverRepository"

    const-string v1, "Completed query of channel repository, took %dms."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 498
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_3
.end method

.method public final varargs b([Ladj$b;)V
    .locals 14
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 530
    array-length v0, p1

    if-nez v0, :cond_0

    .line 531
    const-string v0, "DiscoverRepository"

    const-string v1, "Skipping query of edition repository - no listeners were specified."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    :goto_0
    return-void

    .line 537
    :cond_0
    invoke-static {}, Lajx;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ladj;->v:Z

    if-nez v0, :cond_2

    .line 538
    :cond_1
    const-string v0, "DiscoverRepository"

    const-string v1, "Skipping query of edition repository - user is not logged in."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 542
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    .line 543
    const-string v0, "DiscoverRepository"

    const-string v1, "Beginning refresh of edition repository."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 548
    :try_start_0
    iget-object v0, p0, Ladj;->i:Landroid/content/ContentResolver;

    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->c:Landroid/net/Uri;

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 551
    :try_start_1
    const-string v0, "DiscoverRepository"

    const-string v2, "Query for refresh of edition repository took %dms."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 556
    :cond_3
    invoke-virtual {p0, v1}, Ladj;->a(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v0

    .line 557
    if-eqz v0, :cond_5

    .line 558
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 567
    :cond_4
    invoke-static {v1}, Lbfo;->a(Landroid/database/Cursor;)V

    .line 571
    array-length v1, p1

    move v0, v7

    :goto_2
    if-ge v0, v1, :cond_6

    aget-object v2, p1, v0

    .line 572
    invoke-interface {v2, v10}, Ladj$b;->a(Ljava/util/List;)V

    .line 571
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 560
    :cond_5
    :try_start_2
    const-string v0, "DiscoverRepository"

    const-string v2, "Invalid DSnapPage found in queryDSnapList!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 567
    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lbfo;->a(Landroid/database/Cursor;)V

    throw v0

    .line 575
    :cond_6
    const-string v0, "DiscoverRepository"

    const-string v1, "Completed refresh of edition repository, took %dms."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 567
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_3
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Ladj;->g:Landroid/os/Handler;

    iget-object v1, p0, Ladj;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 420
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Ladj;->g:Landroid/os/Handler;

    iget-object v1, p0, Ladj;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 602
    return-void
.end method
