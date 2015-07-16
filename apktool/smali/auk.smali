.class public final Lauk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lauk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lauk;

    invoke-direct {v0}, Lauk;-><init>()V

    sput-object v0, Lauk;->INSTANCE:Lauk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lauk;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lauk;->INSTANCE:Lauk;

    return-object v0
.end method

.method public static a(Lbiu;Lakp;)Lcom/snapchat/android/model/Friend;
    .locals 4
    .param p1    # Lakp;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 107
    new-instance v1, Lcom/snapchat/android/model/Friend;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/model/Friend;-><init>(Lbiu;Lakp;)V

    .line 108
    invoke-virtual {p1, v1}, Lakp;->e(Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {p1, v1}, Lakp;->d(Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {p1}, Lakp;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/snapchat/android/model/Friend;->mHasBeenAddedAsFriend:Z

    :cond_0
    return-object v1
.end method

.method public static a(Ljava/lang/String;Lakp;)Lcom/snapchat/android/model/Friend;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Lakp;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 25
    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1, p0}, Lakp;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/snapchat/android/model/Friend;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lakp;)V
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-static {p1}, Lakr;->g(Ljava/lang/String;)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p2, p0}, Lakp;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/snapchat/android/model/Friend;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ZLakp;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lakp;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 149
    invoke-virtual {p2, p0}, Lakp;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    .line 151
    iput-boolean p1, v0, Lcom/snapchat/android/model/Friend;->mHasBeenAddedAsFriend:Z

    .line 154
    :cond_0
    invoke-virtual {p2}, Lakp;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 155
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    iput-boolean p1, v0, Lcom/snapchat/android/model/Friend;->mHasBeenAddedAsFriend:Z

    .line 160
    :cond_2
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/Friend;)Z
    .locals 4
    .param p0    # Lcom/snapchat/android/model/Friend;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    if-nez p0, :cond_2

    .line 97
    invoke-static {}, Lakr;->g()I

    move-result v2

    sget-object v3, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->EVERYONE:Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

    invoke-virtual {v3}, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 97
    goto :goto_0

    .line 99
    :cond_2
    iget-boolean v2, p0, Lcom/snapchat/android/model/Friend;->mIsLocalStory:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    .line 85
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    .line 87
    :cond_0
    invoke-virtual {v0, p0}, Lakp;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lauk;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Lakp;)Lcom/snapchat/android/model/Friend;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Lakp;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation build Lchc;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1, p0}, Lakp;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/snapchat/android/model/Friend;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Lakp;)Lcom/snapchat/android/model/Friend;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Lakp;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1, p0}, Lakp;->b(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Lakp;)Z
    .locals 1
    .param p1    # Lakp;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 54
    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1, p0}, Lakp;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->n()Z

    move-result v0

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Lakp;)Ljava/lang/String;
    .locals 1
    .param p1    # Lakp;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1, p0}, Lakp;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->e()Ljava/lang/String;

    move-result-object p0

    .line 66
    :cond_0
    return-object p0
.end method

.method public static f(Ljava/lang/String;Lakp;)Z
    .locals 1
    .param p1    # Lakp;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 70
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p0}, Lakp;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;Lakp;)Z
    .locals 2
    .param p1    # Lakp;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, p0}, Lakp;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_0

    .line 78
    iget-boolean v1, v1, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 80
    :cond_0
    return v0
.end method

.method public static h(Ljava/lang/String;Lakp;)V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lakp;->a(Ljava/lang/String;Z)V

    .line 133
    return-void
.end method
