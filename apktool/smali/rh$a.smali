.class final Lrh$a;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field conversationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversation_id"
    .end annotation
.end field

.field final synthetic this$0:Lrh;

.field transactionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transaction_id"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrh;)V
    .locals 1

    .prologue
    .line 29
    iput-object p1, p0, Lrh$a;->this$0:Lrh;

    invoke-direct {p0}, Lqc;-><init>()V

    .line 30
    iget-object v0, p0, Lrh$a;->this$0:Lrh;

    iget-object v0, v0, Lrh;->mTransactionId:Ljava/lang/String;

    iput-object v0, p0, Lrh$a;->transactionId:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lrh$a;->this$0:Lrh;

    iget-object v0, v0, Lrh;->mConversationId:Ljava/lang/String;

    iput-object v0, p0, Lrh$a;->conversationId:Ljava/lang/String;

    return-void
.end method
