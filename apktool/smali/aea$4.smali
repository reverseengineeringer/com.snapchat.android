.class final Laea$4;
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
    .line 191
    iput-object p1, p0, Laea$4;->a:Laea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 191
    check-cast p1, Lcom/snapchat/android/discover/model/ChannelPage;

    check-cast p2, Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v2, p0, Laea$4;->a:Laea;

    iget-object v2, v2, Laea;->b:Laef;

    iget-object v3, p1, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laef;->b(Ljava/lang/String;)Z

    move-result v4

    iget-object v2, p0, Laea$4;->a:Laea;

    iget-object v2, v2, Laea;->b:Laef;

    iget-object v3, p2, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laef;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    iget-object v0, p0, Laea$4;->a:Laea;

    iget-object v0, v0, Laea;->b:Laef;

    iget-object v1, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laef;->c(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Laea$4;->a:Laea;

    iget-object v0, v0, Laea;->b:Laef;

    iget-object v1, p2, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laef;->c(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    invoke-static {}, Lda;->a()Lda;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lda;->b(ZZ)Lda;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0, v1}, Lda;->a(JJ)Lda;

    move-result-object v0

    invoke-virtual {v0}, Lda;->b()I

    move-result v0

    return v0

    :cond_0
    move-wide v2, v0

    goto :goto_0
.end method
