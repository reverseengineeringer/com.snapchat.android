.class public final Labh;
.super Lcom/snapchat/android/database/table/SnapbryoTable;
.source "SourceFile"


# static fields
.field private static a:Labh;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/snapchat/android/database/table/SnapbryoTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Labh;
    .locals 2

    .prologue
    .line 18
    const-class v1, Labh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Labh;->a:Labh;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Labh;

    invoke-direct {v0}, Labh;-><init>()V

    sput-object v0, Labh;->a:Labh;

    .line 21
    :cond_0
    sget-object v0, Labh;->a:Labh;
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
.method protected final a(Lakp;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakp;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Laji;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Laki;->a()Laki;

    move-result-object v1

    invoke-virtual {v1}, Laki;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final b(Lakp;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-static {}, Laki;->a()Laki;

    move-result-object v0

    invoke-virtual {p0, v1, v1}, Labh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Laki;->b(Ljava/util/List;)V

    .line 32
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "FailedSendDSnapbryoTable"

    return-object v0
.end method
