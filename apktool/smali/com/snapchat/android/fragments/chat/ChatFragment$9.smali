.class final Lcom/snapchat/android/fragments/chat/ChatFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyw$a;


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
    .line 1447
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->f:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iput p3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->b:I

    iput-object p4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->c:Lcom/snapchat/android/model/chat/CashFeedItem;

    iput-object p5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->e:Landroid/text/Editable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 1450
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->b:I

    invoke-static {v2}, Lcom/snapchat/android/util/CashUtils;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1452
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->f:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->c:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 1453
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->f:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->c:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;)V

    .line 1454
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 1457
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->b:I

    invoke-static {v2}, Lcom/snapchat/android/util/CashUtils;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1460
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->e:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->clearSpans()V

    .line 1461
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->f:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->e:Landroid/text/Editable;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1462
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->f:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->q(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 1463
    return-void
.end method
