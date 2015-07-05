.class public final Lcom/snapchat/android/api/LoadAllStorySnapsTask$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api/LoadAllStorySnapsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api/LoadAllStorySnapsTask;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/api/LoadAllStorySnapsTask;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$2;->this$0:Lcom/snapchat/android/api/LoadAllStorySnapsTask;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$2;->this$0:Lcom/snapchat/android/api/LoadAllStorySnapsTask;

    invoke-virtual {v0}, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$2;->this$0:Lcom/snapchat/android/api/LoadAllStorySnapsTask;

    sget-object v1, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->SUCCESS:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->a(Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;)V

    .line 134
    :cond_0
    return-void
.end method
