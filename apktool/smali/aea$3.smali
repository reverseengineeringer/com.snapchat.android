.class final Laea$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laea;
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
.field final synthetic a:Laea;


# direct methods
.method constructor <init>(Laea;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Laea$3;->a:Laea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    check-cast p1, Lcom/snapchat/android/discover/model/ChannelPage;

    check-cast p2, Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v0, p0, Laea$3;->a:Laea;

    iget-object v0, v0, Laea;->a:Ladw;

    iget-object v3, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ladw;->a(Ljava/lang/String;)Ladx;

    move-result-object v3

    iget-object v0, p0, Laea$3;->a:Laea;

    iget-object v0, v0, Laea;->a:Ladw;

    iget-object v4, p2, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ladw;->a(Ljava/lang/String;)Ladx;

    move-result-object v4

    invoke-static {}, Lda;->a()Lda;

    move-result-object v0

    iget-boolean v5, p1, Lcom/snapchat/android/discover/model/ChannelPage;->k:Z

    iget-boolean v6, p2, Lcom/snapchat/android/discover/model/ChannelPage;->k:Z

    invoke-virtual {v0, v5, v6}, Lda;->a(ZZ)Lda;

    move-result-object v0

    iget-object v5, p0, Laea$3;->a:Laea;

    iget-object v5, v5, Laea;->g:Ljava/util/Comparator;

    invoke-virtual {v0, p1, p2, v5}, Lda;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lda;

    move-result-object v5

    iget v0, p1, Lcom/snapchat/android/discover/model/ChannelPage;->g:I

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    iget v6, p2, Lcom/snapchat/android/discover/model/ChannelPage;->g:I

    if-ltz v6, :cond_1

    :goto_1
    invoke-virtual {v5, v0, v1}, Lda;->a(ZZ)Lda;

    move-result-object v0

    iget v1, p1, Lcom/snapchat/android/discover/model/ChannelPage;->g:I

    iget v2, p2, Lcom/snapchat/android/discover/model/ChannelPage;->g:I

    invoke-virtual {v0, v1, v2}, Lda;->a(II)Lda;

    move-result-object v2

    iget-object v0, p0, Laea$3;->a:Laea;

    iget-object v0, v0, Laea;->e:Ljava/util/Comparator;

    instance-of v1, v0, Ldx;

    if-eqz v1, :cond_2

    check-cast v0, Ldx;

    :goto_2
    invoke-virtual {v0}, Ldx;->a()Ldx;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lda;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lda;

    move-result-object v0

    iget v1, p1, Lcom/snapchat/android/discover/model/ChannelPage;->f:I

    iget v2, p2, Lcom/snapchat/android/discover/model/ChannelPage;->f:I

    invoke-virtual {v0, v1, v2}, Lda;->a(II)Lda;

    move-result-object v0

    invoke-virtual {v0}, Lda;->b()I

    move-result v0

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    new-instance v1, Lcz;

    invoke-direct {v1, v0}, Lcz;-><init>(Ljava/util/Comparator;)V

    move-object v0, v1

    goto :goto_2
.end method
