.class public final Lahw;
.super Lbge;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbge",
        "<",
        "Lahy;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lahy;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lban;Lbge$a;Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;)V
    .locals 6
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
    .param p4    # Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lahy;",
            ">;",
            "Lban;",
            "Lbge$a",
            "<",
            "Lahy;",
            ">;",
            "Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    sget-object v5, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lahw;-><init>(Ljava/util/List;Lban;Lbge$a;Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;Ljavax/inject/Provider;)V

    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lban;Lbge$a;Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;Ljavax/inject/Provider;)V
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
    .param p4    # Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Ljavax/inject/Provider;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lahy;",
            ">;",
            "Lban;",
            "Lbge$a",
            "<",
            "Lahy;",
            ">;",
            "Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p2, p3}, Lbge;-><init>(Lban;Lbge$a;)V

    .line 46
    iput-object p1, p0, Lahw;->a:Ljava/util/List;

    .line 47
    iput-object p4, p0, Lahw;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    .line 48
    iput-object p5, p0, Lahw;->c:Ljavax/inject/Provider;

    .line 49
    return-void
.end method

.method private static a(Lahy;Ljava/lang/String;)Z
    .locals 3
    .param p0    # Lahy;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-interface {p0}, Lahy;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-interface {p0}, Lahy;->a()Ljava/lang/String;

    move-result-object v1

    .line 135
    if-eqz v1, :cond_0

    .line 136
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lavg;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lahy;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, -0x1

    .line 54
    iget-object v0, p0, Lahw;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 55
    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lahw;->a:Ljava/util/List;

    .line 128
    :goto_0
    return-object v0

    .line 59
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    iget-object v0, p0, Lahw;->a:Ljava/util/List;

    goto :goto_0

    .line 64
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lahw;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 69
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v2, v3

    move v5, v6

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahy;

    .line 70
    if-ne v2, v3, :cond_d

    invoke-interface {v1}, Lahy;->o()Z

    move-result v4

    if-nez v4, :cond_d

    .line 71
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    move v4, v2

    .line 74
    :goto_2
    const/4 v2, 0x0

    .line 82
    instance-of v8, v1, Lcom/snapchat/android/model/Friend;

    if-eqz v8, :cond_c

    move-object v2, v1

    .line 83
    check-cast v2, Lcom/snapchat/android/model/Friend;

    .line 84
    iget-object v8, p0, Lahw;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    invoke-interface {v8, v2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;->b(Lcom/snapchat/android/model/Friend;)Z

    move-result v8

    if-eqz v8, :cond_b

    move-object v8, v2

    move v2, v7

    .line 89
    :goto_3
    invoke-static {v1, p1}, Lahw;->a(Lahy;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 90
    if-nez v2, :cond_3

    .line 91
    if-eqz v8, :cond_2

    .line 92
    invoke-virtual {v8}, Lcom/snapchat/android/model/Friend;->h()Z

    move-result v2

    if-nez v2, :cond_4

    .line 93
    sget-object v2, Lcom/snapchat/android/model/Friend$SuggestState;->ADDRESS_BOOK:Lcom/snapchat/android/model/Friend$SuggestState;

    iput-object v2, v8, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    .line 94
    sget-object v2, Lcom/snapchat/android/model/Friend$SuggestType;->ADDRESS_BOOK:Lcom/snapchat/android/model/Friend$SuggestType;

    iput-object v2, v8, Lcom/snapchat/android/model/Friend;->mSuggestType:Lcom/snapchat/android/model/Friend$SuggestType;

    .line 100
    :cond_2
    :goto_4
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_3
    invoke-interface {v1}, Lahy;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lavg;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v7

    :goto_5
    move v2, v4

    move v5, v1

    .line 107
    goto :goto_1

    .line 95
    :cond_4
    invoke-virtual {v8}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lauk;->f(Ljava/lang/String;Lakp;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 96
    sget-object v2, Lcom/snapchat/android/model/Friend$SuggestState;->EXISTS:Lcom/snapchat/android/model/Friend$SuggestState;

    iput-object v2, v8, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    .line 97
    sget-object v2, Lcom/snapchat/android/model/Friend$SuggestType;->ADDRESS_BOOK:Lcom/snapchat/android/model/Friend$SuggestType;

    iput-object v2, v8, Lcom/snapchat/android/model/Friend;->mSuggestType:Lcom/snapchat/android/model/Friend$SuggestType;

    goto :goto_4

    .line 113
    :cond_5
    if-nez v5, :cond_8

    .line 114
    new-instance v1, Lcom/snapchat/android/model/Friend;

    invoke-direct {v1, p1}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-static {p1, v0}, Lauk;->g(Ljava/lang/String;Lakp;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lahw;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    invoke-interface {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;->b(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 117
    :cond_6
    sget-object v0, Lcom/snapchat/android/model/Friend$SuggestState;->EXISTS:Lcom/snapchat/android/model/Friend$SuggestState;

    iput-object v0, v1, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    .line 118
    sget-object v0, Lcom/snapchat/android/model/Friend$SuggestType;->USERNAME:Lcom/snapchat/android/model/Friend$SuggestType;

    iput-object v0, v1, Lcom/snapchat/android/model/Friend;->mSuggestType:Lcom/snapchat/android/model/Friend$SuggestType;

    .line 121
    :cond_7
    if-ne v2, v3, :cond_9

    .line 122
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_6
    move-object v0, v9

    .line 128
    goto/16 :goto_0

    .line 124
    :cond_9
    invoke-interface {v9, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_6

    :cond_a
    move v1, v5

    goto :goto_5

    :cond_b
    move-object v8, v2

    move v2, v6

    goto :goto_3

    :cond_c
    move-object v8, v2

    move v2, v6

    goto :goto_3

    :cond_d
    move v4, v2

    goto :goto_2
.end method
