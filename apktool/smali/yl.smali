.class public final Lyl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lyq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lyq;->a()Lyq;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lyl;-><init>(Landroid/content/Context;Lyq;)V

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lyq;)V
    .locals 0
    .annotation build Lcf;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lyl;->a:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lyl;->b:Lyq;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Lako;Ljava/lang/String;)V
    .locals 7
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lako;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    .line 48
    invoke-interface {p2}, Lako;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The provided chatFeedItem cannot be saved/unsaved. Please check canSaveOrUnsave before calling this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iget-object v0, p0, Lyl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 53
    iget-object v0, p0, Lyl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 55
    invoke-interface {p2}, Lako;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lyl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-interface {p2}, Lako;->m()I

    move-result v0

    .line 58
    instance-of v1, p2, Lakb;

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lyl;->b:Lyq;

    check-cast p2, Lakb;

    const/4 v6, 0x0

    invoke-virtual {v1, p1, p2, v0, v6}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lakb;IZ)V

    .line 69
    :cond_1
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    new-instance v0, Lbbg;

    const/4 v1, 0x0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lbbg;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZLjava/lang/String;)V

    .line 73
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 76
    :cond_2
    return-void

    .line 62
    :cond_3
    iget-object v0, p0, Lyl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-interface {p2}, Lako;->l()I

    move-result v0

    .line 64
    instance-of v1, p2, Lakb;

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lyl;->b:Lyq;

    check-cast p2, Lakb;

    invoke-virtual {v1, p1, p2, v0, v5}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lakb;IZ)V

    goto :goto_0
.end method
