.class final Lrj$a;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrj;
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

.field saved:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "saved"
    .end annotation
.end field

.field final synthetic this$0:Lrj;

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
.method constructor <init>(Lrj;)V
    .locals 1

    .prologue
    .line 44
    iput-object p1, p0, Lrj$a;->this$0:Lrj;

    invoke-direct {p0}, Lqc;-><init>()V

    .line 45
    iget-object v0, p0, Lrj$a;->this$0:Lrj;

    invoke-static {v0}, Lrj;->a(Lrj;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrj$a;->transactionId:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lrj$a;->this$0:Lrj;

    invoke-static {v0}, Lrj;->b(Lrj;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrj$a;->conversationId:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lrj$a;->this$0:Lrj;

    invoke-static {v0}, Lrj;->c(Lrj;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lrj$a;->saved:Ljava/lang/Boolean;

    .line 51
    iget-object v0, p0, Lrj$a;->this$0:Lrj;

    invoke-static {v0}, Lrj;->d(Lrj;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lrj$a;->version:Ljava/lang/Integer;

    return-void
.end method
