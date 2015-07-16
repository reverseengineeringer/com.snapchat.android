.class final Lqg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lqg;

.field final synthetic val$networkResult:Lus;

.field final synthetic val$response:Lbli;


# direct methods
.method constructor <init>(Lqg;Lus;Lbli;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lqg$1;->this$0:Lqg;

    iput-object p2, p0, Lqg$1;->val$networkResult:Lus;

    iput-object p3, p0, Lqg$1;->val$response:Lbli;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 229
    iget-object v0, p0, Lqg$1;->this$0:Lqg;

    iget-object v0, v0, Lqg;->mUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 230
    iget-object v1, p0, Lqg$1;->val$networkResult:Lus;

    invoke-virtual {v1}, Lus;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lqg$1;->val$response:Lbli;

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lqg$1;->val$response:Lbli;

    invoke-virtual {v1}, Lbli;->c()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lqg$1;->this$0:Lqg;

    iget-object v2, p0, Lqg$1;->val$response:Lbli;

    invoke-virtual {v1, v2, v0}, Lqg;->a(Lbli;Lakp;)V

    .line 240
    :goto_0
    iget-object v0, p0, Lqg$1;->this$0:Lqg;

    iget-object v1, p0, Lqg$1;->val$response:Lbli;

    iget-object v2, p0, Lqg$1;->val$networkResult:Lus;

    invoke-virtual {v0, v1, v2}, Lqg;->a(Lbli;Lus;)V

    .line 241
    return-void

    .line 235
    :cond_0
    iget-object v1, p0, Lqg$1;->this$0:Lqg;

    iget-object v2, p0, Lqg$1;->val$networkResult:Lus;

    iget-object v3, p0, Lqg$1;->val$response:Lbli;

    invoke-virtual {v3}, Lbli;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lqg;->a(Lus;Ljava/lang/String;Lakp;)V

    goto :goto_0

    .line 238
    :cond_1
    iget-object v1, p0, Lqg$1;->this$0:Lqg;

    iget-object v2, p0, Lqg$1;->val$networkResult:Lus;

    iget-object v3, p0, Lqg$1;->val$networkResult:Lus;

    iget-object v3, v3, Lus;->mResponseMessage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lqg;->a(Lus;Ljava/lang/String;Lakp;)V

    goto :goto_0
.end method
