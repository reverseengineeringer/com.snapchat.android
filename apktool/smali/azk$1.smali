.class final Lazk$1;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lazk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<",
        "Ljava/lang/String;",
        "Lazr;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 58
    sget-object v0, Lcom/snapchat/android/Timber$LogType;->CHAT:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v0}, Lcom/snapchat/android/Timber$LogType;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lazr;

    const-string v2, "snapchat_shake2report_chat_"

    invoke-direct {v1, v2}, Lazr;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lazk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/snapchat/android/Timber$LogType;->LOCATION_MANAGER:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v0}, Lcom/snapchat/android/Timber$LogType;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lazr;

    const-string v2, "snapchat_shake2report_location_manager_"

    invoke-direct {v1, v2}, Lazr;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lazk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/snapchat/android/Timber$LogType;->BITMAP_POOL_MONITOR:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v0}, Lcom/snapchat/android/Timber$LogType;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lazr;

    const-string v2, "snapchat_shake2report_bitmap_pool_monitor_"

    invoke-direct {v1, v2}, Lazr;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lazk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "DEFAULT"

    new-instance v1, Lazr;

    const-string v2, "snapchat_shake2report_default_"

    invoke-direct {v1, v2}, Lazr;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lazk$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method
