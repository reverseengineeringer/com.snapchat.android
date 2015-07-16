.class public final Lalb;
.super Lakw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lalb$a;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "screenshot"


# direct methods
.method private constructor <init>(Lalb$a;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lakw;-><init>(Lakw$a;)V

    .line 28
    invoke-direct {p0}, Lalb;->D()V

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lalb$a;B)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lalb;-><init>(Lalb$a;)V

    return-void
.end method

.method public constructor <init>(Lbif;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lakw;-><init>(Lbif;)V

    .line 23
    invoke-direct {p0}, Lalb;->D()V

    .line 24
    return-void
.end method

.method private D()V
    .locals 6

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    .line 33
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    const v1, 0x7f0c0094

    invoke-virtual {v0, v1}, Lcom/snapchat/android/SnapchatApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lalb;->mStatusText:Ljava/lang/String;

    .line 40
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v1

    invoke-static {v0, v1}, Lauk;->e(Ljava/lang/String;Lakp;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    const v2, 0x7f0c008d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/SnapchatApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lalb;->mStatusText:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final Q()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$a;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lakw;->a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    .line 55
    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    const v1, 0x7f020032

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$a;-><init>(I)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0204

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/snapchat/android/model/chat/ChatConversation;)I
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->MOST_RECENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "screenshot"

    return-object v0
.end method
