.class public final Lahr;
.super Laho;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Laho;-><init>()V

    .line 25
    const-string v0, "AddressBookFriendsListProvider"

    iput-object v0, p0, Lahr;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/snapchat/android/util/FriendSectionizer;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$e;

    invoke-direct {v0}, Lcom/snapchat/android/util/FriendSectionizer$e;-><init>()V

    return-object v0
.end method

.method public final a(Lakp;Ljava/util/ArrayList;)V
    .locals 5
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
    .line 29
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 30
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Lakp;->o()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-virtual {p1}, Lakp;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 35
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v4, :cond_0

    .line 36
    sget-object v4, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ON_SNAPCHAT:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    iput-object v4, v0, Lcom/snapchat/android/model/Friend;->mFriendSection:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    .line 37
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 41
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-virtual {p1}, Lakp;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 46
    iget-boolean v3, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v3, :cond_2

    .line 47
    sget-object v3, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->INVITE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    iput-object v3, v0, Lcom/snapchat/android/model/Friend;->mFriendSection:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    .line 48
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 51
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 52
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "has no contacts."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_4
    return-void
.end method

.method public final b()Lcom/snapchat/android/util/FriendSectionizer;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$d;

    invoke-direct {v0}, Lcom/snapchat/android/util/FriendSectionizer$d;-><init>()V

    return-object v0
.end method

.method public final b(Lakp;Ljava/util/ArrayList;)V
    .locals 5
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
    .line 60
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 61
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Lakp;->o()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-virtual {p1}, Lakp;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 66
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v4, :cond_0

    .line 67
    sget-object v4, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ON_SNAPCHAT:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    iput-object v4, v0, Lcom/snapchat/android/model/Friend;->mFriendSection:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    .line 68
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 72
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-virtual {p1}, Lakp;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 77
    iget-boolean v3, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v3, :cond_2

    .line 78
    sget-object v3, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->INVITE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    iput-object v3, v0, Lcom/snapchat/android/model/Friend;->mFriendSection:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    .line 79
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 82
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 83
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 84
    return-void
.end method
