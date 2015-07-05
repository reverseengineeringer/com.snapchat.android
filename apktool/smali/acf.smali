.class public final Lacf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/snapchat/android/discover/model/ChannelPage;

.field public final b:Lcom/snapchat/android/discover/model/DSnapPage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lacf;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    .line 17
    iput-object v0, p0, Lacf;->b:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lacf;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    .line 27
    iput-object p2, p0, Lacf;->b:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 28
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 42
    const-string v1, "(%s, %s)"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lacf;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacf;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v0, p0, Lacf;->b:Lcom/snapchat/android/discover/model/DSnapPage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lacf;->b:Lcom/snapchat/android/discover/model/DSnapPage;

    :goto_1
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "None"

    goto :goto_0

    :cond_1
    const-string v0, "None"

    goto :goto_1
.end method
