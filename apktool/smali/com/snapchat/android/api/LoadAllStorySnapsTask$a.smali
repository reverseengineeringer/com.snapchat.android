.class final Lcom/snapchat/android/api/LoadAllStorySnapsTask$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laje$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api/LoadAllStorySnapsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api/LoadAllStorySnapsTask;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/api/LoadAllStorySnapsTask;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$a;->this$0:Lcom/snapchat/android/api/LoadAllStorySnapsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/api/LoadAllStorySnapsTask;B)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/snapchat/android/api/LoadAllStorySnapsTask$a;-><init>(Lcom/snapchat/android/api/LoadAllStorySnapsTask;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$a;->this$0:Lcom/snapchat/android/api/LoadAllStorySnapsTask;

    sget-object v1, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->FAILED_TO_LOAD:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->a(Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;)V

    .line 247
    return-void
.end method

.method public final a(Laje;)V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$a;->this$0:Lcom/snapchat/android/api/LoadAllStorySnapsTask;

    iget-object v1, v0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 239
    :try_start_0
    invoke-virtual {p1, p0}, Laje;->a(Laje$a;)V

    .line 240
    iget-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$a;->this$0:Lcom/snapchat/android/api/LoadAllStorySnapsTask;

    iget-object v0, v0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mStorySnapsLeftToLoad:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 241
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    iget-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$a;->this$0:Lcom/snapchat/android/api/LoadAllStorySnapsTask;

    invoke-virtual {v0}, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->d()V

    .line 243
    return-void

    .line 241
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
