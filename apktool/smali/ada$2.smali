.class final Lada$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lada;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/snapchat/android/discover/model/ChannelPage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lada;


# direct methods
.method constructor <init>(Lada;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lada$2;->a:Lada;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 195
    check-cast p1, Lcom/snapchat/android/discover/model/ChannelPage;

    check-cast p2, Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v0, p0, Lada$2;->a:Lada;

    iget-object v0, v0, Lada;->a:Lacw;

    iget-object v1, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lacw;->a(Ljava/lang/String;)Lacx;

    move-result-object v2

    iget-object v0, p0, Lada$2;->a:Lada;

    iget-object v0, v0, Lada;->a:Lacw;

    iget-object v1, p2, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lacw;->a(Ljava/lang/String;)Lacx;

    move-result-object v3

    invoke-static {}, Lcw;->a()Lcw;

    move-result-object v0

    iget-boolean v1, p1, Lcom/snapchat/android/discover/model/ChannelPage;->k:Z

    iget-boolean v4, p2, Lcom/snapchat/android/discover/model/ChannelPage;->k:Z

    invoke-virtual {v0, v1, v4}, Lcw;->a(ZZ)Lcw;

    move-result-object v0

    iget-object v1, p0, Lada$2;->a:Lada;

    iget-object v1, v1, Lada;->j:Ljava/util/Comparator;

    invoke-virtual {v0, p1, p2, v1}, Lcw;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcw;

    move-result-object v4

    iget-object v0, p0, Lada$2;->a:Lada;

    iget-object v0, v0, Lada;->h:Ljava/util/Comparator;

    instance-of v1, v0, Ldo;

    if-eqz v1, :cond_0

    check-cast v0, Ldo;

    :goto_0
    invoke-virtual {v0}, Ldo;->a()Ldo;

    move-result-object v0

    invoke-virtual {v4, v2, v3, v0}, Lcw;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcw;

    move-result-object v0

    iget v1, p1, Lcom/snapchat/android/discover/model/ChannelPage;->g:I

    iget v2, p2, Lcom/snapchat/android/discover/model/ChannelPage;->g:I

    invoke-virtual {v0, v1, v2}, Lcw;->a(II)Lcw;

    move-result-object v0

    invoke-virtual {v0}, Lcw;->b()I

    move-result v0

    return v0

    :cond_0
    new-instance v1, Lcv;

    invoke-direct {v1, v0}, Lcv;-><init>(Ljava/util/Comparator;)V

    move-object v0, v1

    goto :goto_0
.end method
