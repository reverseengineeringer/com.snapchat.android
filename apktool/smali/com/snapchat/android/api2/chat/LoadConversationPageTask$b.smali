.class public final Lcom/snapchat/android/api2/chat/LoadConversationPageTask$b;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/chat/LoadConversationPageTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation runtime Ltn;
.end annotation


# instance fields
.field final mConversationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversation_id"
    .end annotation
.end field

.field final mOffset:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "offset"
    .end annotation
.end field

.field final synthetic this$0:Lcom/snapchat/android/api2/chat/LoadConversationPageTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/chat/LoadConversationPageTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 153
    iput-object p1, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$b;->this$0:Lcom/snapchat/android/api2/chat/LoadConversationPageTask;

    invoke-direct {p0}, Lpl;-><init>()V

    .line 154
    iput-object p2, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$b;->mConversationId:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$b;->mOffset:Ljava/lang/String;

    .line 156
    return-void
.end method
