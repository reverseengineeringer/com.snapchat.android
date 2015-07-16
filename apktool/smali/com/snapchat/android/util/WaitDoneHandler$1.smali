.class final Lcom/snapchat/android/util/WaitDoneHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/WaitDoneHandler;->waitDone()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/util/WaitDoneHandler;

.field final synthetic val$waitDoneLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/WaitDoneHandler;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/snapchat/android/util/WaitDoneHandler$1;->this$0:Lcom/snapchat/android/util/WaitDoneHandler;

    iput-object p2, p0, Lcom/snapchat/android/util/WaitDoneHandler$1;->val$waitDoneLock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 29
    iget-object v1, p0, Lcom/snapchat/android/util/WaitDoneHandler$1;->val$waitDoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 30
    :try_start_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
