.class public final Layg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layg$2;
    }
.end annotation


# static fields
.field private static final SCCP_HTTP_PERSISTENCE_DELAY:I = 0x1388


# direct methods
.method public static a(Lcom/snapchat/android/model/chat/ChatConversation;Lbjk;Z)Lakw;
    .locals 4
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p1}, Lbjk;->a()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {p0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->f(Ljava/lang/String;)Lakw;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1, p2}, Lakw;->a(Lbjk;Z)V

    .line 120
    :goto_0
    return-object v0

    .line 106
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lbjk;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lbjk$a;->SAVED:Lbjk$a;

    invoke-virtual {v2}, Lbjk$a;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Ljava/lang/String;)V

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Layg$1;

    invoke-direct {v1, p0}, Layg$1;-><init>(Lcom/snapchat/android/model/chat/ChatConversation;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchc;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 37
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    const-string v0, ""

    .line 43
    :cond_0
    invoke-static {v0, p0}, Layg;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchc;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 62
    const-string v1, "~"

    invoke-static {v0, v1}, Lavz;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/snapchat/android/model/chat/ChatConversation;)Z
    .locals 2
    .param p0    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 92
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 73
    const-string v1, "~"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    .line 76
    array-length v5, v4

    move v2, v0

    move v3, v0

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v4, v2

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 88
    :goto_1
    return-object v0

    .line 80
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 76
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 84
    :cond_1
    const/4 v0, 0x1

    if-le v3, v0, :cond_2

    move-object v0, v1

    .line 85
    goto :goto_1

    .line 88
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
