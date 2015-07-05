.class final Lqt$a;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqt;
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

.field saved:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "saved"
    .end annotation
.end field

.field final synthetic this$0:Lqt;

.field transactionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transaction_id"
    .end annotation
.end field

.field version:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lqt;)V
    .locals 1

    .prologue
    .line 44
    iput-object p1, p0, Lqt$a;->this$0:Lqt;

    invoke-direct {p0}, Lpl;-><init>()V

    .line 45
    iget-object v0, p0, Lqt$a;->this$0:Lqt;

    invoke-static {v0}, Lqt;->a(Lqt;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqt$a;->transactionId:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lqt$a;->this$0:Lqt;

    invoke-static {v0}, Lqt;->b(Lqt;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqt$a;->conversationId:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lqt$a;->this$0:Lqt;

    invoke-static {v0}, Lqt;->c(Lqt;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lqt$a;->saved:Ljava/lang/Boolean;

    .line 51
    iget-object v0, p0, Lqt$a;->this$0:Lqt;

    invoke-static {v0}, Lqt;->d(Lqt;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lqt$a;->version:Ljava/lang/Integer;

    return-void
.end method
