.class public final Lzh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lzm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lzm;->a()Lzm;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lzh;-><init>(Landroid/content/Context;Lzm;)V

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lzm;)V
    .locals 0
    .annotation build Lcf;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lzh;->a:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lzh;->b:Lzm;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Lalj;Ljava/lang/String;)V
    .locals 6
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lalj;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-interface {p2}, Lalj;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The provided chatFeedItem cannot be saved/unsaved. Please check canSaveOrUnsave before calling this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iget-object v0, p0, Lzh;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 53
    iget-object v0, p0, Lzh;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08005d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 55
    invoke-interface {p2}, Lalj;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lzh;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0091

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-interface {p2}, Lalj;->n()I

    move-result v3

    .line 58
    instance-of v4, p2, Lakw;

    if-eqz v4, :cond_1

    .line 59
    iget-object v4, p0, Lzh;->b:Lzm;

    check-cast p2, Lakw;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, p2, v3, v5}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lakw;IZ)V

    .line 69
    :cond_1
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 70
    new-instance v3, Lbcg;

    invoke-direct {v3, v0, v1, v2, p3}, Lbcg;-><init>(Ljava/lang/CharSequence;IILjava/lang/String;)V

    .line 73
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 76
    :cond_2
    return-void

    .line 62
    :cond_3
    iget-object v0, p0, Lzh;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c008c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-interface {p2}, Lalj;->m()I

    move-result v3

    .line 64
    instance-of v4, p2, Lakw;

    if-eqz v4, :cond_1

    .line 65
    iget-object v4, p0, Lzh;->b:Lzm;

    check-cast p2, Lakw;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, p2, v3, v5}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lakw;IZ)V

    goto :goto_0
.end method
