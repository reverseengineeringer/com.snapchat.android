.class final Lcom/snapchat/android/fragments/chat/ChatFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lya$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic b:I

.field final synthetic c:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/text/Editable;

.field final synthetic f:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/ChatConversation;ILcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 1403
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->f:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iput p3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->b:I

    iput-object p4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->c:Lcom/snapchat/android/model/chat/CashFeedItem;

    iput-object p5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->e:Landroid/text/Editable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 1406
    const-string v0, "ChatFragment"

    const-string v1, "CASH-LOG: RECONFIRMED transaction recipient[%s] amount[%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v4, v4, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->b:I

    invoke-static {v4}, Lcom/snapchat/android/util/CashUtils;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1408
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->f:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->c:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 1409
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->f:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->c:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;)V

    .line 1410
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 1413
    const-string v0, "ChatFragment"

    const-string v1, "CASH-LOG: RECONFIRM CANCELED recipient[%s] amount[%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v4, v4, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->b:I

    invoke-static {v4}, Lcom/snapchat/android/util/CashUtils;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1416
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->e:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->clearSpans()V

    .line 1417
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->f:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->e:Landroid/text/Editable;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1418
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->f:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->q(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 1419
    return-void
.end method
