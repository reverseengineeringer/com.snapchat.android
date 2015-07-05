.class Lcom/addlive/service/UIThreadResponder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addlive/service/UIThreadResponder;->resultHandler(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/service/UIThreadResponder;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/addlive/service/UIThreadResponder;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/addlive/service/UIThreadResponder$1;->this$0:Lcom/addlive/service/UIThreadResponder;

    iput-object p2, p0, Lcom/addlive/service/UIThreadResponder$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/addlive/service/UIThreadResponder$1;->this$0:Lcom/addlive/service/UIThreadResponder;

    iget-object v1, p0, Lcom/addlive/service/UIThreadResponder$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/addlive/service/UIThreadResponder;->handleResult(Ljava/lang/Object;)V

    .line 34
    return-void
.end method
