.class final Lada$3;
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
    .line 213
    iput-object p1, p0, Lada$3;->a:Lada;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 213
    check-cast p1, Lcom/snapchat/android/discover/model/ChannelPage;

    check-cast p2, Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v2, p0, Lada$3;->a:Lada;

    iget-object v2, v2, Lada;->b:Ladf;

    iget-object v3, p1, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ladf;->b(Ljava/lang/String;)Z

    move-result v4

    iget-object v2, p0, Lada$3;->a:Lada;

    iget-object v2, v2, Lada;->b:Ladf;

    iget-object v3, p2, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ladf;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    iget-object v0, p0, Lada$3;->a:Lada;

    iget-object v0, v0, Lada;->b:Ladf;

    iget-object v1, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ladf;->c(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lada$3;->a:Lada;

    iget-object v0, v0, Lada;->b:Ladf;

    iget-object v1, p2, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ladf;->c(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    invoke-static {}, Lcw;->a()Lcw;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcw;->b(ZZ)Lcw;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0, v1}, Lcw;->a(JJ)Lcw;

    move-result-object v0

    invoke-virtual {v0}, Lcw;->b()I

    move-result v0

    return v0

    :cond_0
    move-wide v2, v0

    goto :goto_0
.end method
