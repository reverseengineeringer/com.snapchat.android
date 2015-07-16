.class public final Lawa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lawa;

.field private static final MAX_VISIBLE_SUGGESTED_FRIEND_NUM:I = 0x1e


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lawa;

    invoke-direct {v0}, Lawa;-><init>()V

    sput-object v0, Lawa;->INSTANCE:Lawa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lawa;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lawa;->INSTANCE:Lawa;

    return-object v0
.end method

.method public static a(Lakp;Lcom/snapchat/android/util/FriendSectionizer$FriendSection;)Ljava/util/ArrayList;
    .locals 5
    .param p0    # Lakp;
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakp;",
            "Lcom/snapchat/android/util/FriendSectionizer$FriendSection;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 48
    invoke-virtual {p0}, Lakp;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 49
    invoke-virtual {p0}, Lakp;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 50
    invoke-virtual {p0}, Lakp;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 51
    invoke-virtual {p0}, Lakp;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 52
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 53
    iput-object p1, v0, Lcom/snapchat/android/model/Friend;->mFriendSection:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    .line 56
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v4, 0x1e

    if-lt v0, v4, :cond_0

    .line 58
    :cond_1
    return-object v1
.end method

.method public static a(Lblq;Lakp;)V
    .locals 6
    .param p1    # Lakp;
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-virtual {p0}, Lblq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Lblq;->a()Ljava/util/List;

    move-result-object v0

    .line 34
    invoke-static {}, Lakr;->a()Lakr;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lakr;->bq()Ljava/util/List;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/database/SharedPreferenceKey;->IDENTITY_SUGGESTED_FRIEND_FIND_TIMESTAMPS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v3}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "~"

    invoke-static {v1, v4}, Lavz;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblo;

    .line 38
    new-instance v3, Lcom/snapchat/android/model/Friend;

    invoke-direct {v3, v0}, Lcom/snapchat/android/model/Friend;-><init>(Lblo;)V

    .line 39
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {p1, v1}, Lakp;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static a(Lakp;Lakr;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lakp;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lakr;->bq()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lakr;->bq()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 81
    :goto_0
    return v0

    .line 79
    :cond_1
    invoke-static {}, Lakr;->bq()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 81
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {}, Lakr;->br()I

    move-result v0

    int-to-long v6, v0

    const-wide/32 v8, 0x36ee80

    mul-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method
