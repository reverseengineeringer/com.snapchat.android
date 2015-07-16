.class public final Lale;
.super Lakw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lale$a;
    }
.end annotation


# static fields
.field private static final TYPE:Ljava/lang/String; = "unknown"


# direct methods
.method private constructor <init>(Lale$a;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lakw;-><init>(Lakw$a;)V

    .line 18
    invoke-direct {p0}, Lale;->D()V

    .line 19
    return-void
.end method

.method public synthetic constructor <init>(Lale$a;B)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lale;-><init>(Lale$a;)V

    return-void
.end method

.method public constructor <init>(Lbif;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lakw;-><init>(Lbif;)V

    .line 13
    invoke-direct {p0}, Lale;->D()V

    .line 14
    return-void
.end method

.method private D()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x0

    const v2, 0x7f0c02c9

    invoke-static {v1, v2, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lale;->mStatusText:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public final C_()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public final Q()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c028f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/snapchat/android/model/chat/ChatConversation;)I
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->MOST_RECENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "unknown"

    return-object v0
.end method
