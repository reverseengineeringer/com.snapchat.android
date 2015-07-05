.class public final Lafa$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field a:Lcom/snapchat/android/model/Friend;

.field b:Lcom/snapchat/android/model/Friend;

.field c:Z

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/Friend;)Z
    .locals 1
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 97
    iget-object v0, p0, Lafa$c;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/Friend;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/snapchat/android/model/Friend;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 138
    const-string v0, "AddFriendsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lafa$c;->a:Lcom/snapchat/android/model/Friend;

    iput-object v0, p0, Lafa$c;->b:Lcom/snapchat/android/model/Friend;

    .line 141
    invoke-virtual {p0, p1}, Lafa$c;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lafa$c;->a:Lcom/snapchat/android/model/Friend;

    .line 150
    :goto_0
    iput-boolean v3, p0, Lafa$c;->c:Z

    .line 151
    iput-boolean v3, p0, Lafa$c;->d:Z

    .line 152
    return-void

    .line 146
    :cond_0
    iput-object p1, p0, Lafa$c;->a:Lcom/snapchat/android/model/Friend;

    goto :goto_0
.end method
