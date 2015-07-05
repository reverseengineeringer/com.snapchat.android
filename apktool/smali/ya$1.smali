.class final Lya$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya;->a(Lcom/snapchat/android/model/chat/CashFeedItem;Lya$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic b:Lya$a;

.field final synthetic c:Lya;


# direct methods
.method constructor <init>(Lya;Lcom/snapchat/android/model/chat/CashFeedItem;Lya$a;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lya$1;->c:Lya;

    iput-object p2, p0, Lya$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iput-object p3, p0, Lya$1;->b:Lya$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 85
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager CONFIRMED cash id[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lya$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lya$1;->b:Lya$a;

    invoke-interface {v0}, Lya$a;->a()V

    .line 87
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 91
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager CONFIRM CANCELED id[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lya$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lya$1;->b:Lya$a;

    invoke-interface {v0}, Lya$a;->b()V

    .line 93
    return-void
.end method
