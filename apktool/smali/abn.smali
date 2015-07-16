.class public final Labn;
.super Labm;
.source "SourceFile"


# static fields
.field private static a:Labn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Labn;

    invoke-direct {v0}, Labn;-><init>()V

    sput-object v0, Labn;->a:Labn;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "HasSeenOurCampusStoryDialog"

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v1

    invoke-interface {v1}, Lazy;->b()Laaq;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Labm;-><init>(Ljava/lang/String;Laap;)V

    .line 13
    return-void
.end method

.method public static declared-synchronized a()Labn;
    .locals 2

    .prologue
    .line 16
    const-class v0, Labn;

    monitor-enter v0

    :try_start_0
    sget-object v1, Labn;->a:Labn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
