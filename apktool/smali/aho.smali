.class public Laho;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/util/FriendSectionizer;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$b;

    invoke-direct {v0}, Lcom/snapchat/android/util/FriendSectionizer$b;-><init>()V

    return-object v0
.end method

.method public a(Lakp;Ljava/util/ArrayList;)V
    .locals 4
    .param p1    # Lakp;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakp;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 28
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Lakp;->o()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 29
    invoke-virtual {p1}, Lakp;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 31
    iget-boolean v3, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 32
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p1}, Lakp;->m()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 38
    return-void
.end method

.method public b()Lcom/snapchat/android/util/FriendSectionizer;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$a;

    invoke-direct {v0}, Lcom/snapchat/android/util/FriendSectionizer$a;-><init>()V

    return-object v0
.end method

.method public b(Lakp;Ljava/util/ArrayList;)V
    .locals 6
    .param p1    # Lakp;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakp;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 42
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 43
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {p1}, Lakp;->o()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 48
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {p1}, Lakp;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 50
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lauk;->f(Ljava/lang/String;Lakp;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v5, :cond_0

    .line 51
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 55
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 56
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 59
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-virtual {p1}, Lakp;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 61
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v5, :cond_2

    .line 62
    sget-object v5, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->MY_ADDRESS_BOOK:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    iput-object v5, v0, Lcom/snapchat/android/model/Friend;->mFriendSection:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    .line 63
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 67
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 68
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-virtual {p1}, Lakp;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 73
    iget-boolean v5, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v5, :cond_4

    .line 74
    sget-object v5, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->MY_ADDRESS_BOOK:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    iput-object v5, v0, Lcom/snapchat/android/model/Friend;->mFriendSection:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    .line 75
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 78
    :cond_5
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 79
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 80
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 86
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-boolean v4, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->q()Z

    move-result v4

    if-nez v4, :cond_6

    .line 87
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 90
    :cond_7
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 91
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 92
    return-void
.end method
