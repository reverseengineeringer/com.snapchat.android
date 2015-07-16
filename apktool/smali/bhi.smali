.class public final Lbhi;
.super Lbhj;
.source "SourceFile"


# instance fields
.field private final mCache:Laxn;

.field private final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Laxn;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lbhj;-><init>()V

    .line 23
    iput-object p1, p0, Lbhi;->mCache:Laxn;

    .line 24
    iput-object p2, p0, Lbhi;->mKey:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()Lfu;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lbhi;->mCache:Laxn;

    iget-object v1, p0, Lbhi;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laxn;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 34
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 35
    new-instance v0, Lfv;

    invoke-direct {v0}, Lfv;-><init>()V

    .line 36
    iput-object v1, v0, Lfv;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Lfv;->a()Lfu;

    move-result-object v0

    goto :goto_0
.end method
