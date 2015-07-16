.class final Lqi$a;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field final conversationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversation_id"
    .end annotation
.end field

.field final synthetic this$0:Lqi;


# direct methods
.method constructor <init>(Lqi;)V
    .locals 1

    .prologue
    .line 38
    iput-object p1, p0, Lqi$a;->this$0:Lqi;

    invoke-direct {p0}, Lqc;-><init>()V

    .line 39
    iget-object v0, p0, Lqi$a;->this$0:Lqi;

    iget-object v0, v0, Lqi;->mConversationId:Ljava/lang/String;

    iput-object v0, p0, Lqi$a;->conversationId:Ljava/lang/String;

    return-void
.end method
