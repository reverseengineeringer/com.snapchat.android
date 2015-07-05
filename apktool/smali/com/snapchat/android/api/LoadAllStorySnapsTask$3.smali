.class final Lcom/snapchat/android/api/LoadAllStorySnapsTask$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api/LoadAllStorySnapsTask;->a(Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api/LoadAllStorySnapsTask;

.field final synthetic val$status:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api/LoadAllStorySnapsTask;Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$3;->this$0:Lcom/snapchat/android/api/LoadAllStorySnapsTask;

    iput-object p2, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$3;->val$status:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 196
    iget-object v1, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$3;->this$0:Lcom/snapchat/android/api/LoadAllStorySnapsTask;

    iget-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$3;->val$status:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    sget-object v2, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->SUCCESS:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->a(Z)V

    .line 197
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
