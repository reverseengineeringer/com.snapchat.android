.class final Layg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layg;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbjk;Z)Lakw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$conversation:Lcom/snapchat/android/model/chat/ChatConversation;


# direct methods
.method constructor <init>(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Layg$1;->val$conversation:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 115
    invoke-static {}, Ltt;->a()Ltt;

    move-result-object v0

    iget-object v1, p0, Layg$1;->val$conversation:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltt;->a(Ljava/lang/String;Z)Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    .line 117
    return-void
.end method
