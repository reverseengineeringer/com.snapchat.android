.class Lcom/addlive/service/UIThreadResponder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addlive/service/UIThreadResponder;->errHandler(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/service/UIThreadResponder;

.field final synthetic val$errCode:I

.field final synthetic val$errMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/addlive/service/UIThreadResponder;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/addlive/service/UIThreadResponder$2;->this$0:Lcom/addlive/service/UIThreadResponder;

    iput p2, p0, Lcom/addlive/service/UIThreadResponder$2;->val$errCode:I

    iput-object p3, p0, Lcom/addlive/service/UIThreadResponder$2;->val$errMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/addlive/service/UIThreadResponder$2;->this$0:Lcom/addlive/service/UIThreadResponder;

    iget v1, p0, Lcom/addlive/service/UIThreadResponder$2;->val$errCode:I

    iget-object v2, p0, Lcom/addlive/service/UIThreadResponder$2;->val$errMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/addlive/service/UIThreadResponder;->handleError(ILjava/lang/String;)V

    .line 44
    return-void
.end method
