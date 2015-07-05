.class final Lqp$b;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation runtime Ltn;
.end annotation


# instance fields
.field conversationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversation_id"
    .end annotation
.end field

.field final synthetic this$0:Lqp;

.field transactionIds:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transaction_ids"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lqp;)V
    .locals 1

    .prologue
    .line 44
    iput-object p1, p0, Lqp$b;->this$0:Lqp;

    invoke-direct {p0}, Lpl;-><init>()V

    .line 45
    iget-object v0, p0, Lqp$b;->this$0:Lqp;

    invoke-static {v0}, Lqp;->a(Lqp;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqp$b;->transactionIds:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lqp$b;->this$0:Lqp;

    invoke-static {v0}, Lqp;->b(Lqp;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqp$b;->conversationId:Ljava/lang/String;

    return-void
.end method
