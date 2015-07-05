.class public final Laba;
.super Lcom/snapchat/android/database/table/SnapbryoTable;
.source "SourceFile"


# static fields
.field private static a:Laba;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/snapchat/android/database/table/SnapbryoTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Laba;
    .locals 2

    .prologue
    .line 18
    const-class v1, Laba;

    monitor-enter v1

    :try_start_0
    sget-object v0, Laba;->a:Laba;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Laba;

    invoke-direct {v0}, Laba;-><init>()V

    sput-object v0, Laba;->a:Laba;

    .line 21
    :cond_0
    sget-object v0, Laba;->a:Laba;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a(Lajv;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajv;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Laim;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v1

    iget-object v2, v1, Lajn;->mSendingSnapbryos:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lajn;->a(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final b(Lajv;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v0

    invoke-virtual {p0, v1, v1}, Laba;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lajn;->c(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v1

    iput-object v1, v0, Lajn;->mSendingSnapbryos:Ljava/util/Map;

    .line 32
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "SendingSnapbryoTable"

    return-object v0
.end method
