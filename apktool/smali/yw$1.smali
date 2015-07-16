.class final Lyw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyw;->a(Lcom/snapchat/android/model/chat/CashFeedItem;Lyw$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic b:Lyw$a;

.field final synthetic c:Lyw;


# direct methods
.method constructor <init>(Lyw;Lcom/snapchat/android/model/chat/CashFeedItem;Lyw$a;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lyw$1;->c:Lyw;

    iput-object p2, p0, Lyw$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iput-object p3, p0, Lyw$1;->b:Lyw$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lyw$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 87
    iget-object v0, p0, Lyw$1;->b:Lyw$a;

    invoke-interface {v0}, Lyw$a;->a()V

    .line 88
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lyw$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 93
    iget-object v0, p0, Lyw$1;->b:Lyw$a;

    invoke-interface {v0}, Lyw$a;->b()V

    .line 94
    return-void
.end method
