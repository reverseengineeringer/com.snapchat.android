.class final Lrf$b;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field conversationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversation_id"
    .end annotation
.end field

.field final synthetic this$0:Lrf;

.field transactionIds:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transaction_ids"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrf;)V
    .locals 1

    .prologue
    .line 44
    iput-object p1, p0, Lrf$b;->this$0:Lrf;

    invoke-direct {p0}, Lqc;-><init>()V

    .line 45
    iget-object v0, p0, Lrf$b;->this$0:Lrf;

    invoke-static {v0}, Lrf;->a(Lrf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrf$b;->transactionIds:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lrf$b;->this$0:Lrf;

    invoke-static {v0}, Lrf;->b(Lrf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrf$b;->conversationId:Ljava/lang/String;

    return-void
.end method
