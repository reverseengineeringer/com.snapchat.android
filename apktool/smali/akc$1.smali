.class final Lakc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lakc;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lakc;


# direct methods
.method constructor <init>(Lakc;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lakc$1;->this$0:Lakc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 210
    iget-object v1, p0, Lakc$1;->this$0:Lakc;

    invoke-static {}, Lbgp;->b()V

    :try_start_0
    iget-object v2, v1, Lakc;->mConversations:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Lakc;->mConversations:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    new-instance v0, Lakc$2;

    invoke-direct {v0, v1}, Lakc$2;-><init>(Lakc;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 211
    return-void

    .line 210
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    const-string v0, "ChatConversationManager"

    const-string v2, "Comparison method violates its general contract! ChatConversation timestamp transitivity is not preserved in the sorting process."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
