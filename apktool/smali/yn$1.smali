.class final Lyn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyn;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/snapchat/android/model/chat/ChatFeedItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic b:Lyn;


# direct methods
.method constructor <init>(Lyn;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lyn$1;->b:Lyn;

    iput-object p2, p0, Lyn$1;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 143
    check-cast p1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    check-cast p2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    iget-object v0, p0, Lyn$1;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-interface {p1, v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->c(Lcom/snapchat/android/model/chat/ChatConversation;)J

    move-result-wide v0

    iget-object v2, p0, Lyn$1;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-interface {p2, v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->c(Lcom/snapchat/android/model/chat/ChatConversation;)J

    move-result-wide v2

    sub-long v0, v2, v0

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
