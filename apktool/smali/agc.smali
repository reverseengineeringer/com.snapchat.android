.class public final Lagc;
.super Lbge;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbge",
        "<",
        "Lcom/snapchat/android/model/Friend;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lban;Lbge$a;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lban;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lbge$a;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Lban;",
            "Lbge$a",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p2, p3}, Lbge;-><init>(Lban;Lbge$a;)V

    .line 51
    iput-object p1, p0, Lagc;->f:Ljava/util/List;

    .line 52
    return-void
.end method

.method private a(Lcom/snapchat/android/model/Friend;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 172
    iget-boolean v0, p0, Lagc;->b:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lavg;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 183
    :goto_0
    return v0

    .line 175
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 178
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    invoke-static {v0, p2}, Lavg;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    const/4 v0, 0x1

    goto :goto_0

    .line 183
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lavg;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 86
    iput-object p1, p0, Lagc;->a:Ljava/lang/String;

    .line 87
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 88
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lagc;->f:Ljava/util/List;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 90
    if-nez p1, :cond_0

    .line 167
    :goto_0
    return-object v2

    .line 93
    :cond_0
    iget-boolean v0, p0, Lagc;->e:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_1
    move v4, v5

    move v3, v5

    .line 100
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_9

    .line 101
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 105
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lavg;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 106
    :cond_2
    instance-of v1, v0, Lagl;

    if-eqz v1, :cond_7

    move-object v1, v0

    .line 110
    check-cast v1, Lagl;

    .line 111
    invoke-direct {p0, v0, p1}, Lagc;->a(Lcom/snapchat/android/model/Friend;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    .line 100
    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v3, v0

    goto :goto_1

    .line 115
    :cond_3
    iget-object v0, v1, Lagl;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    invoke-static {v0, p1}, Lavg;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {p1, v0}, Lavg;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    :cond_5
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    .line 119
    goto :goto_2

    :cond_6
    move v0, v3

    .line 122
    goto :goto_2

    .line 124
    :cond_7
    iget-boolean v1, p0, Lagc;->c:Z

    if-nez v1, :cond_f

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lavg;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 128
    iget-boolean v1, p0, Lagc;->d:Z

    if-eqz v1, :cond_12

    move-object v1, v0

    .line 129
    :goto_3
    invoke-direct {p0, v0, p1}, Lagc;->a(Lcom/snapchat/android/model/Friend;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 133
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v2, v0, Lcom/snapchat/android/model/Friend;->mFriendSection:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    sget-object v8, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->MY_ADDRESS_BOOK:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    if-eq v2, v8, :cond_8

    iget-object v2, v0, Lcom/snapchat/android/model/Friend;->mFriendSection:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    sget-object v8, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ON_SNAPCHAT:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    if-eq v2, v8, :cond_8

    iget-object v0, v0, Lcom/snapchat/android/model/Friend;->mFriendSection:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    sget-object v2, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->INVITE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    if-ne v0, v2, :cond_11

    .line 137
    :cond_8
    add-int/lit8 v0, v3, 0x1

    move-object v2, v1

    goto :goto_2

    .line 143
    :cond_9
    iget-boolean v0, p0, Lagc;->c:Z

    if-nez v0, :cond_a

    .line 145
    if-nez v2, :cond_e

    .line 146
    new-instance v0, Lcom/snapchat/android/model/Friend;

    invoke-direct {v0, p1}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;)V

    .line 147
    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestState;->PENDING:Lcom/snapchat/android/model/Friend$SuggestState;

    iput-object v1, v0, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    .line 148
    sget-object v1, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->USERNAME:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    iput-object v1, v0, Lcom/snapchat/android/model/Friend;->mFriendSection:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    .line 150
    iget-boolean v1, p0, Lagc;->d:Z

    if-nez v1, :cond_b

    .line 152
    invoke-interface {v6, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_a
    :goto_4
    move-object v2, v6

    .line 167
    goto/16 :goto_0

    .line 153
    :cond_b
    if-eqz v3, :cond_c

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lt v3, v1, :cond_d

    .line 156
    :cond_c
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 159
    :cond_d
    invoke-interface {v6, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 161
    :cond_e
    iget-boolean v0, p0, Lagc;->d:Z

    if-nez v0, :cond_a

    .line 163
    invoke-interface {v6, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_f
    move-object v1, v2

    goto :goto_3

    :cond_10
    move v0, v3

    goto/16 :goto_2

    :cond_11
    move v0, v3

    move-object v2, v1

    goto/16 :goto_2

    :cond_12
    move-object v2, v0

    move v0, v3

    goto/16 :goto_2
.end method

.method protected final a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lagc;->mExceptionReporter:Lban;

    invoke-virtual {v0, p1}, Lban;->b(Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method
