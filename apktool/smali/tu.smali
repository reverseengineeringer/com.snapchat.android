.class public final Ltu;
.super Ltx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltu$a;
    }
.end annotation


# static fields
.field public static final CHAT_TYPING_PATH:Ljava/lang/String; = "/bq/chat_typing"

.field private static final TAG:Ljava/lang/String; = "TellThemIAmTypingTask"


# instance fields
.field private mConversation:Lcom/snapchat/android/model/chat/ChatConversation;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 2
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0}, Ltx;-><init>()V

    .line 24
    iput-object p1, p0, Ltu;->mConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 25
    iget-object v0, p0, Ltu;->mConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsNotifyingRecipientAboutTyping:Z

    .line 26
    return-void
.end method


# virtual methods
.method protected final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "/bq/chat_typing"

    return-object v0
.end method

.method public final synthetic getRequestPayload()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ltu$a;

    iget-object v1, p0, Ltu;->mConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->z()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ltu$a;-><init>(Ltu;Ljava/util/List;)V

    return-object v0
.end method

.method public final onResult(Lus;)V
    .locals 2
    .param p1    # Lus;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-super {p0, p1}, Ltx;->onResult(Lus;)V

    .line 52
    iget-object v0, p0, Ltu;->mConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsNotifyingRecipientAboutTyping:Z

    .line 53
    return-void
.end method
