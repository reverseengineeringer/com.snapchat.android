.class public final Lads;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ladq;


# instance fields
.field private final a:Lama;

.field private final b:Ladv;

.field private final c:Ladu;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 23
    invoke-static {}, Lama;->a()Lama;

    move-result-object v0

    new-instance v1, Ladv;

    invoke-direct {v1}, Ladv;-><init>()V

    new-instance v2, Ladu;

    invoke-direct {v2}, Ladu;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lads;-><init>(Lama;Ladv;Ladu;)V

    .line 24
    return-void
.end method

.method private constructor <init>(Lama;Ladv;Ladu;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lads;->a:Lama;

    .line 30
    iput-object p3, p0, Lads;->c:Ladu;

    .line 31
    iput-object p2, p0, Lads;->b:Ladv;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Ladf;Lcom/snapchat/android/discover/model/DSnapPage;Laly$a;)Z
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lads;->a:Lama;

    invoke-virtual {v0}, Lama;->b()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    .line 40
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 41
    iget-object v0, p0, Lads;->b:Ladv;

    invoke-virtual {v0, p1, p2, p3}, Ladv;->a(Ladf;Lcom/snapchat/android/discover/model/DSnapPage;Laly$a;)Z

    move-result v0

    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lads;->c:Ladu;

    invoke-virtual {v0, p1, p2, p3}, Ladu;->a(Ladf;Lcom/snapchat/android/discover/model/DSnapPage;Laly$a;)Z

    move-result v0

    goto :goto_0
.end method
