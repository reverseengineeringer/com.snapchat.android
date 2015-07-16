.class final Lsl$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lti$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsl$1;->a(Lrl;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsl$1;


# direct methods
.method constructor <init>(Lsl$1;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lsl$1$1;->this$1:Lsl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lsl$1$1;->this$1:Lsl$1;

    iget-object v0, v0, Lsl$1;->this$0:Lsl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsl;->a(Ljava/util/List;Z)V

    .line 51
    return-void
.end method

.method public final a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    const/16 v0, 0x191

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lsl$1$1;->this$1:Lsl$1;

    iget-object v0, v0, Lsl$1;->this$0:Lsl;

    invoke-static {v0}, Lsl;->a(Lsl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lsl$1$1;->this$1:Lsl$1;

    iget-object v0, v0, Lsl$1;->this$0:Lsl;

    invoke-static {v0}, Lsl;->b(Lsl;)Z

    .line 57
    iget-object v0, p0, Lsl$1$1;->this$1:Lsl$1;

    iget-object v0, v0, Lsl$1;->this$0:Lsl;

    iget-object v0, v0, Lsl;->mCashAuthManager:Lyj;

    invoke-virtual {v0, v2}, Lyj;->a(Lym;)V

    .line 58
    iget-object v0, p0, Lsl$1$1;->this$1:Lsl$1;

    iget-object v0, v0, Lsl$1;->this$0:Lsl;

    invoke-virtual {v0, v2}, Lsl;->a(Lcom/snapchat/android/model/CashTransaction;)V

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lsl$1$1;->this$1:Lsl$1;

    iget-object v0, v0, Lsl$1;->this$0:Lsl;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lsl;->b(Ljava/util/List;Z)V

    goto :goto_0
.end method
