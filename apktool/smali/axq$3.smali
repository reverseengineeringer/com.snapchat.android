.class final Laxq$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laxq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laxq;

.field final synthetic val$pingId:Ljava/lang/String;


# direct methods
.method constructor <init>(Laxq;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Laxq$3;->this$0:Laxq;

    iput-object p2, p0, Laxq$3;->val$pingId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 117
    iget-object v0, p0, Laxq$3;->this$0:Laxq;

    iget-object v1, p0, Laxq$3;->val$pingId:Ljava/lang/String;

    iget-object v2, v0, Laxq;->mPingIds:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SecureChatSessionPinger"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CHAT-LOG: PING TIMED OUT! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v0, Laxq;->mInterface:Laxq$a;

    invoke-interface {v0}, Laxq$a;->f()V

    .line 118
    :cond_0
    return-void
.end method
