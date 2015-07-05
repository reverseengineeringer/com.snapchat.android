.class final Lcom/snapchat/android/model/chat/ChatConversation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/model/chat/ChatConversation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/model/chat/ChatConversation;


# direct methods
.method constructor <init>(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatConversation$1;->this$0:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation$1;->this$0:Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Z)V

    .line 200
    return-void
.end method
