.class public Lpe;
.super Lpk;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_NUM_TO_FETCH:I = 0x14

.field private static final FRIEND_USERNAMES_PARAM:Ljava/lang/String; = "friend_usernames"

.field private static final FRIEND_USER_ID_PARAM:Ljava/lang/String; = "friend_user_ids"

.field private static final TASK_NAME:Ljava/lang/String; = "GetProfileInfoTask"

.field private static final USERNAME_PARAM:Ljava/lang/String; = "username"


# instance fields
.field private mUser:Lakp;

.field private mUserIdsToGet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsernamesToGet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/Friend;)V
    .locals 1
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lpe;-><init>(Lcom/snapchat/android/model/Friend;B)V

    .line 47
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/model/Friend;B)V
    .locals 6
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/16 v2, 0x14

    .line 53
    invoke-direct {p0}, Lpk;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpe;->mUsernamesToGet:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpe;->mUserIdsToGet:Ljava/util/List;

    .line 54
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    iput-object v0, p0, Lpe;->mUser:Lakp;

    .line 55
    iget-object v0, p0, Lpe;->mUser:Lakp;

    if-nez v0, :cond_1

    .line 87
    :cond_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lpe;->mUser:Lakp;

    invoke-virtual {v0}, Lakp;->o()Ljava/util/List;

    move-result-object v3

    .line 61
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 62
    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 63
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 65
    add-int/lit8 v0, v1, -0xa

    .line 66
    add-int/lit8 v1, v1, 0xa

    .line 68
    if-gez v0, :cond_2

    .line 69
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 70
    const/4 v0, 0x0

    .line 73
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 75
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v2, :cond_4

    :goto_0
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lpe;->mUsernamesToGet:Ljava/util/List;

    move v2, v0

    .line 76
    :goto_1
    if-gt v2, v1, :cond_0

    .line 77
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 78
    iget-object v4, v0, Lcom/snapchat/android/model/Friend;->mUserId:Ljava/lang/String;

    .line 79
    iget-object v5, p0, Lpe;->mUsernamesToGet:Ljava/util/List;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 81
    iget-object v0, p0, Lpe;->mUserIdsToGet:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 75
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 84
    :cond_5
    iget-object v0, p0, Lpe;->mUserIdsToGet:Ljava/util/List;

    const-string v4, ""

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "/bq/bests"

    return-object v0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 112
    invoke-static {}, Laul;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 114
    iget-object v1, p0, Lpe;->mUsernamesToGet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 116
    if-eqz v2, :cond_0

    .line 117
    const-string v3, "best_friends"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 118
    const-string v5, "score"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    .line 119
    sget-object v5, Lajp;->sUsernamesToProfileInfo:Ljava/util/HashMap;

    new-instance v6, Lajp;

    invoke-direct {v6, v3, v2}, Lajp;-><init>(Ljava/util/List;I)V

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 122
    :cond_1
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbco;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lbco;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method protected final a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 136
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbco;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbco;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method protected final b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    const-string v1, "username"

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Laul;->a()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lpe;->mUsernamesToGet:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 99
    const-string v2, "friend_usernames"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lpe;->mUserIdsToGet:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lpe;->mUserIdsToGet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    invoke-static {}, Laul;->a()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lpe;->mUserIdsToGet:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 102
    const-string v2, "friend_user_ids"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    return-object v0
.end method

.method protected final b(Lalp;)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-string v0, "GetProfileInfoTask"

    return-object v0
.end method
