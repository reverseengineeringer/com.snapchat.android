.class public final Lans;
.super Lana;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lans$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Laxn;

.field private final d:Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

.field private e:Lakp;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Laxo;->PROFILE_IMAGE_CACHE:Laxn;

    invoke-static {}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a()Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lans;-><init>(Landroid/content/Intent;Laxn;Lcom/snapchat/android/util/profileimages/ProfileImageUtils;)V

    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;Laxn;Lcom/snapchat/android/util/profileimages/ProfileImageUtils;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lana;-><init>(Landroid/content/Intent;)V

    .line 47
    const-string v0, "size"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lans;->b:Ljava/lang/String;

    .line 48
    const-string v0, "added_friends"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lans;->a:Ljava/util/ArrayList;

    .line 49
    iput-object p2, p0, Lans;->c:Laxn;

    .line 50
    iput-object p3, p0, Lans;->d:Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lans;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lans;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lans;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 79
    invoke-static {p1}, Lakp;->a(Landroid/content/Context;)Lakp;

    move-result-object v0

    iput-object v0, p0, Lans;->e:Lakp;

    .line 80
    invoke-super {p0, p1}, Lana;->a(Landroid/content/Context;)V

    .line 82
    :cond_0
    return-void
.end method

.method public final getMethod()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->POST:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lans$a;

    invoke-direct {v0}, Lans$a;-><init>()V

    iget-object v1, p0, Lans;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lans$a;->a(Ljava/lang/String;)Lblc;

    move-result-object v0

    iget-object v1, p0, Lans;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lblc;->a(Ljava/util/List;)Lblc;

    move-result-object v0

    invoke-static {v0}, Lans;->buildAuthPayload(Lbhy;)Lbhy;

    move-result-object v0

    return-object v0
.end method

.method protected final l_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "/bq/download_friends_profile_data"

    return-object v0
.end method

.method public final onResult(Lus;)V
    .locals 6
    .param p1    # Lus;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 91
    invoke-super {p0, p1}, Lana;->onResult(Lus;)V

    .line 93
    invoke-virtual {p1}, Lus;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lans;->a:Ljava/util/ArrayList;

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lus;->e()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 123
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p1, Lus;->mBuffer:Lbgk;

    .line 101
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lbgk;->a()I

    move-result v1

    if-nez v1, :cond_3

    .line 102
    :cond_1
    new-array v0, v5, [Ljava/lang/Object;

    iget-object v1, p0, Lans;->a:Ljava/util/ArrayList;

    aput-object v1, v0, v2

    .line 114
    :goto_1
    iget-object v0, p0, Lans;->e:Lakp;

    invoke-virtual {v0}, Lakp;->q()Ljava/util/List;

    move-result-object v1

    .line 115
    new-instance v2, Ljava/util/HashSet;

    iget-object v0, p0, Lans;->a:Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 116
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 117
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    iput-boolean v5, v0, Lcom/snapchat/android/model/Friend;->mProfileImagesFetched:Z

    goto :goto_2

    .line 104
    :cond_3
    invoke-interface {v0}, Lbgk;->b()[B

    move-result-object v1

    invoke-interface {v0}, Lbgk;->a()I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "friends profile images - download success  byte length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    :try_start_0
    iget-object v1, p0, Lans;->c:Laxn;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a([BLaxn;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "friends profile images - deserializing data failed with error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 122
    :cond_4
    iget-object v0, p0, Lans;->e:Lakp;

    invoke-virtual {v0, v1}, Lakp;->a(Ljava/util/List;)V

    goto :goto_0
.end method
