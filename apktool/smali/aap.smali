.class public final Laap;
.super Laan;
.source "SourceFile"


# static fields
.field private static a:Laap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Laap;

    invoke-direct {v0}, Laap;-><init>()V

    sput-object v0, Laap;->a:Laap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "HasSeenPostToOurStoryDialog"

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v1

    invoke-interface {v1}, Laza;->c()Lzs;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Laan;-><init>(Ljava/lang/String;Lzp;)V

    .line 13
    return-void
.end method

.method public static declared-synchronized a()Laap;
    .locals 2

    .prologue
    .line 16
    const-class v0, Laap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Laap;->a:Laap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
