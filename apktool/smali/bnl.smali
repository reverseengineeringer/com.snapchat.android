.class public final Lbnl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lbzx;

.field public static final b:Lbzx;

.field public static final c:Lbzx;

.field public static final d:Lbzx;

.field public static final e:Lbzx;

.field public static final f:Lbzx;

.field public static final g:Lbzx;


# instance fields
.field public final h:Lbzx;

.field public final i:Lbzx;

.field final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, ":status"

    invoke-static {v0}, Lbzx;->a(Ljava/lang/String;)Lbzx;

    move-result-object v0

    sput-object v0, Lbnl;->a:Lbzx;

    .line 9
    const-string v0, ":method"

    invoke-static {v0}, Lbzx;->a(Ljava/lang/String;)Lbzx;

    move-result-object v0

    sput-object v0, Lbnl;->b:Lbzx;

    .line 10
    const-string v0, ":path"

    invoke-static {v0}, Lbzx;->a(Ljava/lang/String;)Lbzx;

    move-result-object v0

    sput-object v0, Lbnl;->c:Lbzx;

    .line 11
    const-string v0, ":scheme"

    invoke-static {v0}, Lbzx;->a(Ljava/lang/String;)Lbzx;

    move-result-object v0

    sput-object v0, Lbnl;->d:Lbzx;

    .line 12
    const-string v0, ":authority"

    invoke-static {v0}, Lbzx;->a(Ljava/lang/String;)Lbzx;

    move-result-object v0

    sput-object v0, Lbnl;->e:Lbzx;

    .line 13
    const-string v0, ":host"

    invoke-static {v0}, Lbzx;->a(Ljava/lang/String;)Lbzx;

    move-result-object v0

    sput-object v0, Lbnl;->f:Lbzx;

    .line 14
    const-string v0, ":version"

    invoke-static {v0}, Lbzx;->a(Ljava/lang/String;)Lbzx;

    move-result-object v0

    sput-object v0, Lbnl;->g:Lbzx;

    return-void
.end method

.method public constructor <init>(Lbzx;Lbzx;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lbnl;->h:Lbzx;

    .line 33
    iput-object p2, p0, Lbnl;->i:Lbzx;

    .line 34
    iget-object v0, p1, Lbzx;->c:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x20

    iget-object v1, p2, Lbzx;->c:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lbnl;->j:I

    .line 35
    return-void
.end method

.method public constructor <init>(Lbzx;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    invoke-static {p2}, Lbzx;->a(Ljava/lang/String;)Lbzx;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lbnl;-><init>(Lbzx;Lbzx;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 24
    invoke-static {p1}, Lbzx;->a(Ljava/lang/String;)Lbzx;

    move-result-object v0

    invoke-static {p2}, Lbzx;->a(Ljava/lang/String;)Lbzx;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbnl;-><init>(Lbzx;Lbzx;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 38
    instance-of v1, p1, Lbnl;

    if-eqz v1, :cond_0

    .line 39
    check-cast p1, Lbnl;

    .line 40
    iget-object v1, p0, Lbnl;->h:Lbzx;

    iget-object v2, p1, Lbnl;->h:Lbzx;

    invoke-virtual {v1, v2}, Lbzx;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbnl;->i:Lbzx;

    iget-object v2, p1, Lbnl;->i:Lbzx;

    .line 41
    invoke-virtual {v1, v2}, Lbzx;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 43
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lbnl;->h:Lbzx;

    invoke-virtual {v0}, Lbzx;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 49
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lbnl;->i:Lbzx;

    invoke-virtual {v1}, Lbzx;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lbnl;->h:Lbzx;

    invoke-virtual {v3}, Lbzx;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lbnl;->i:Lbzx;

    invoke-virtual {v3}, Lbzx;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
