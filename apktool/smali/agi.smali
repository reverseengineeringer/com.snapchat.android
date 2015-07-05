.class public final Lagi;
.super Lbfe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbfe",
        "<",
        "Lagk;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lagk;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
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
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lazo;Lbfe$a;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lazo;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Lbfe$a;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lagk;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Lazo;",
            "Lbfe$a",
            "<",
            "Lagk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p3, p4}, Lbfe;-><init>(Lazo;Lbfe$a;)V

    .line 30
    iput-object p1, p0, Lagi;->a:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lagi;->b:Ljava/util/List;

    .line 32
    return-void
.end method

.method private static a(Lcom/snapchat/android/model/Friend;Ljava/lang/String;)Z
    .locals 4
    .param p0    # Lcom/snapchat/android/model/Friend;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 81
    :goto_0
    return v0

    .line 67
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    invoke-static {v0, p1}, Laui;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 81
    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lagk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lagi;->a:Ljava/util/List;

    .line 61
    :goto_0
    return-object v0

    .line 42
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    const/4 v0, 0x0

    .line 45
    iget-object v1, p0, Lagi;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 46
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Laui;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 47
    const/4 v1, 0x1

    .line 50
    :cond_2
    invoke-static {v0, p1}, Lagi;->a(Lcom/snapchat/android/model/Friend;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 51
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 55
    :cond_3
    if-nez v1, :cond_4

    .line 56
    new-instance v0, Lcom/snapchat/android/model/Friend;

    invoke-direct {v0, p1}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;)V

    .line 57
    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestState;->PENDING:Lcom/snapchat/android/model/Friend$SuggestState;

    iput-object v1, v0, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    .line 58
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v0, v2

    .line 61
    goto :goto_0
.end method
