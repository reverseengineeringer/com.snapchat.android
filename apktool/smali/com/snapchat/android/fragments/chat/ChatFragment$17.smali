.class final Lcom/snapchat/android/fragments/chat/ChatFragment$17;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic b:I

.field final synthetic c:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/ChatConversation;I)V
    .locals 0

    .prologue
    .line 2606
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iput p3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->b:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 2606
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->i:Lyw;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->b:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lyw;->a(Lcom/snapchat/android/model/chat/ChatConversation;IZ)Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v1, v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->i:Lyw;

    new-instance v2, Lcom/snapchat/android/fragments/chat/ChatFragment$17$1;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment$17$1;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment$17;Lcom/snapchat/android/model/chat/CashFeedItem;)V

    invoke-virtual {v1, v0, v2}, Lyw;->a(Lcom/snapchat/android/model/chat/CashFeedItem;Lyw$a;)V

    const/4 v0, 0x0

    return-object v0
.end method
