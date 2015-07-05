.class final Lpr$a;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation runtime Ltn;
.end annotation


# instance fields
.field final conversationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversation_id"
    .end annotation
.end field

.field final synthetic this$0:Lpr;


# direct methods
.method constructor <init>(Lpr;)V
    .locals 1

    .prologue
    .line 38
    iput-object p1, p0, Lpr$a;->this$0:Lpr;

    invoke-direct {p0}, Lpl;-><init>()V

    .line 39
    iget-object v0, p0, Lpr$a;->this$0:Lpr;

    iget-object v0, v0, Lpr;->mConversationId:Ljava/lang/String;

    iput-object v0, p0, Lpr$a;->conversationId:Ljava/lang/String;

    return-void
.end method
