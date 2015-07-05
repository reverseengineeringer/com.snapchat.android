.class final Lqr$a;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation runtime Ltn;
.end annotation


# instance fields
.field conversationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversation_id"
    .end annotation
.end field

.field final synthetic this$0:Lqr;

.field transactionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transaction_id"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lqr;)V
    .locals 1

    .prologue
    .line 29
    iput-object p1, p0, Lqr$a;->this$0:Lqr;

    invoke-direct {p0}, Lpl;-><init>()V

    .line 30
    iget-object v0, p0, Lqr$a;->this$0:Lqr;

    iget-object v0, v0, Lqr;->mTransactionId:Ljava/lang/String;

    iput-object v0, p0, Lqr$a;->transactionId:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lqr$a;->this$0:Lqr;

    iget-object v0, v0, Lqr;->mConversationId:Ljava/lang/String;

    iput-object v0, p0, Lqr$a;->conversationId:Ljava/lang/String;

    return-void
.end method
