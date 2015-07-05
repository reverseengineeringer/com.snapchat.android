.class final Lpp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpp;

.field final synthetic val$networkResult:Luc;

.field final synthetic val$response:Lbkh;


# direct methods
.method constructor <init>(Lpp;Luc;Lbkh;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lpp$1;->this$0:Lpp;

    iput-object p2, p0, Lpp$1;->val$networkResult:Luc;

    iput-object p3, p0, Lpp$1;->val$response:Lbkh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 229
    iget-object v0, p0, Lpp$1;->this$0:Lpp;

    iget-object v0, v0, Lpp;->mUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    .line 230
    iget-object v1, p0, Lpp$1;->val$networkResult:Luc;

    invoke-virtual {v1}, Luc;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lpp$1;->val$response:Lbkh;

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lpp$1;->val$response:Lbkh;

    invoke-virtual {v1}, Lbkh;->c()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lpp$1;->this$0:Lpp;

    iget-object v2, p0, Lpp$1;->val$response:Lbkh;

    invoke-virtual {v1, v2, v0}, Lpp;->a(Lbkh;Lajv;)V

    .line 240
    :goto_0
    iget-object v0, p0, Lpp$1;->this$0:Lpp;

    iget-object v1, p0, Lpp$1;->val$response:Lbkh;

    iget-object v2, p0, Lpp$1;->val$networkResult:Luc;

    invoke-virtual {v0, v1, v2}, Lpp;->a(Lbkh;Luc;)V

    .line 241
    return-void

    .line 235
    :cond_0
    iget-object v1, p0, Lpp$1;->this$0:Lpp;

    iget-object v2, p0, Lpp$1;->val$networkResult:Luc;

    iget-object v3, p0, Lpp$1;->val$response:Lbkh;

    invoke-virtual {v3}, Lbkh;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lpp;->a(Luc;Ljava/lang/String;Lajv;)V

    goto :goto_0

    .line 238
    :cond_1
    iget-object v1, p0, Lpp$1;->this$0:Lpp;

    iget-object v2, p0, Lpp$1;->val$networkResult:Luc;

    iget-object v3, p0, Lpp$1;->val$networkResult:Luc;

    iget-object v3, v3, Luc;->mResponseMessage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lpp;->a(Luc;Ljava/lang/String;Lajv;)V

    goto :goto_0
.end method
