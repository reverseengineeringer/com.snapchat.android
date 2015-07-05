.class public final Lte;
.super Lth;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lte$a;
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
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0}, Lth;-><init>()V

    .line 24
    iput-object p1, p0, Lte;->mConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 25
    iget-object v0, p0, Lte;->mConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsNotifyingRecipientAboutTyping:Z

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Luc;)V
    .locals 2
    .param p1    # Luc;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-super {p0, p1}, Lth;->a(Luc;)V

    .line 52
    iget-object v0, p0, Lte;->mConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsNotifyingRecipientAboutTyping:Z

    .line 53
    return-void
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lte$a;

    iget-object v1, p0, Lte;->mConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->y()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lte$a;-><init>(Lte;Ljava/util/List;)V

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "/bq/chat_typing"

    return-object v0
.end method
