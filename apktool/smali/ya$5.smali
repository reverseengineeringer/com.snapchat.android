.class final Lya$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Lya$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic b:Lya$b;

.field final synthetic c:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic d:Lya;


# direct methods
.method constructor <init>(Lya;Lcom/snapchat/android/model/chat/CashFeedItem;Lya$b;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lya$5;->d:Lya;

    iput-object p2, p0, Lya$5;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iput-object p3, p0, Lya$5;->b:Lya$b;

    iput-object p4, p0, Lya$5;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 198
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager RE-INITIATED cash id[%s] successfully"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lya$5;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lya$5;->b:Lya$b;

    invoke-interface {v0}, Lya$b;->a()V

    .line 200
    iget-object v0, p0, Lya$5;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0}, Lya;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 201
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 205
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager FAILED to RE-INITIATE cash id[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lya$5;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lya$5;->b:Lya$b;

    invoke-interface {v0}, Lya$b;->b()V

    .line 207
    iget-object v0, p0, Lya$5;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0}, Lya;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 208
    return-void
.end method
