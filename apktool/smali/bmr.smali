.class public final Lbmr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbmr$a;
    }
.end annotation


# static fields
.field public static final a:Lbmr;

.field public static final b:Lbmr;

.field public static final c:Lbmr;


# instance fields
.field public final d:Z

.field final e:[Ljava/lang/String;

.field final f:[Ljava/lang/String;

.field final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/16 v7, 0xe

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 32
    new-instance v2, Lbmr$a;

    invoke-direct {v2, v6}, Lbmr$a;-><init>(Z)V

    new-array v3, v7, [Lbmo;

    sget-object v0, Lbmo;->aK:Lbmo;

    aput-object v0, v3, v1

    sget-object v0, Lbmo;->aO:Lbmo;

    aput-object v0, v3, v6

    sget-object v0, Lbmo;->W:Lbmo;

    aput-object v0, v3, v8

    sget-object v0, Lbmo;->am:Lbmo;

    aput-object v0, v3, v9

    const/4 v0, 0x4

    sget-object v4, Lbmo;->al:Lbmo;

    aput-object v4, v3, v0

    const/4 v0, 0x5

    sget-object v4, Lbmo;->av:Lbmo;

    aput-object v4, v3, v0

    const/4 v0, 0x6

    sget-object v4, Lbmo;->aw:Lbmo;

    aput-object v4, v3, v0

    const/4 v0, 0x7

    sget-object v4, Lbmo;->F:Lbmo;

    aput-object v4, v3, v0

    const/16 v0, 0x8

    sget-object v4, Lbmo;->E:Lbmo;

    aput-object v4, v3, v0

    const/16 v0, 0x9

    sget-object v4, Lbmo;->J:Lbmo;

    aput-object v4, v3, v0

    const/16 v0, 0xa

    sget-object v4, Lbmo;->U:Lbmo;

    aput-object v4, v3, v0

    const/16 v0, 0xb

    sget-object v4, Lbmo;->D:Lbmo;

    aput-object v4, v3, v0

    const/16 v0, 0xc

    sget-object v4, Lbmo;->H:Lbmo;

    aput-object v4, v3, v0

    const/16 v0, 0xd

    sget-object v4, Lbmo;->h:Lbmo;

    aput-object v4, v3, v0

    .line 33
    iget-boolean v0, v2, Lbmr$a;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v4, v7, [Ljava/lang/String;

    move v0, v1

    :goto_0
    if-ge v0, v7, :cond_1

    aget-object v5, v3, v0

    iget-object v5, v5, Lbmo;->aS:Ljava/lang/String;

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v4, v2, Lbmr$a;->b:[Ljava/lang/String;

    new-array v0, v9, [Lbng;

    sget-object v3, Lbng;->a:Lbng;

    aput-object v3, v0, v1

    sget-object v3, Lbng;->b:Lbng;

    aput-object v3, v0, v6

    sget-object v3, Lbng;->c:Lbng;

    aput-object v3, v0, v8

    .line 56
    invoke-virtual {v2, v0}, Lbmr$a;->a([Lbng;)Lbmr$a;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lbmr$a;->a()Lbmr$a;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lbmr$a;->b()Lbmr;

    move-result-object v0

    sput-object v0, Lbmr;->a:Lbmr;

    .line 61
    new-instance v0, Lbmr$a;

    sget-object v2, Lbmr;->a:Lbmr;

    invoke-direct {v0, v2}, Lbmr$a;-><init>(Lbmr;)V

    new-array v2, v6, [Lbng;

    sget-object v3, Lbng;->c:Lbng;

    aput-object v3, v2, v1

    .line 62
    invoke-virtual {v0, v2}, Lbmr$a;->a([Lbng;)Lbmr$a;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lbmr$a;->a()Lbmr$a;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lbmr$a;->b()Lbmr;

    move-result-object v0

    sput-object v0, Lbmr;->b:Lbmr;

    .line 67
    new-instance v0, Lbmr$a;

    invoke-direct {v0, v1}, Lbmr$a;-><init>(Z)V

    invoke-virtual {v0}, Lbmr$a;->b()Lbmr;

    move-result-object v0

    sput-object v0, Lbmr;->c:Lbmr;

    return-void
.end method

.method private constructor <init>(Lbmr$a;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iget-boolean v0, p1, Lbmr$a;->a:Z

    iput-boolean v0, p0, Lbmr;->d:Z

    .line 84
    iget-object v0, p1, Lbmr$a;->b:[Ljava/lang/String;

    iput-object v0, p0, Lbmr;->e:[Ljava/lang/String;

    .line 85
    iget-object v0, p1, Lbmr$a;->c:[Ljava/lang/String;

    iput-object v0, p0, Lbmr;->f:[Ljava/lang/String;

    .line 86
    iget-boolean v0, p1, Lbmr$a;->d:Z

    iput-boolean v0, p0, Lbmr;->g:Z

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Lbmr$a;B)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lbmr;-><init>(Lbmr$a;)V

    return-void
.end method

.method private a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lbmr;->f:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lbng;

    .line 110
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lbmr;->f:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 111
    iget-object v2, p0, Lbmr;->f:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lbng;->a(Ljava/lang/String;)Lbng;

    move-result-object v2

    aput-object v2, v1, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    invoke-static {v1}, Lbnq;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lbmr;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lbmr;->e:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lbmr;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lbmr;->f:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 178
    instance-of v2, p1, Lbmr;

    if-nez v2, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    goto :goto_0

    .line 181
    :cond_2
    check-cast p1, Lbmr;

    .line 182
    iget-boolean v2, p0, Lbmr;->d:Z

    iget-boolean v3, p1, Lbmr;->d:Z

    if-ne v2, v3, :cond_0

    .line 184
    iget-boolean v2, p0, Lbmr;->d:Z

    if-eqz v2, :cond_3

    .line 185
    iget-object v2, p0, Lbmr;->e:[Ljava/lang/String;

    iget-object v3, p1, Lbmr;->e:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lbmr;->f:[Ljava/lang/String;

    iget-object v3, p1, Lbmr;->f:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    iget-boolean v2, p0, Lbmr;->g:Z

    iget-boolean v3, p1, Lbmr;->g:Z

    if-ne v2, v3, :cond_0

    :cond_3
    move v0, v1

    .line 190
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 194
    const/16 v0, 0x11

    .line 195
    iget-boolean v1, p0, Lbmr;->d:Z

    if-eqz v1, :cond_0

    .line 196
    iget-object v0, p0, Lbmr;->e:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 197
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lbmr;->f:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 198
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lbmr;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 200
    :cond_0
    return v0

    .line 198
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 204
    iget-boolean v0, p0, Lbmr;->d:Z

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p0, Lbmr;->e:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 206
    :goto_0
    if-nez v0, :cond_2

    const-string v0, "[use default]"

    .line 207
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ConnectionSpec(cipherSuites="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tlsVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 208
    invoke-direct {p0}, Lbmr;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lbmr;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    :goto_2
    return-object v0

    .line 205
    :cond_0
    iget-object v0, p0, Lbmr;->e:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lbmo;

    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lbmr;->e:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lbmr;->e:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lbmo;->a(Ljava/lang/String;)Lbmo;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    invoke-static {v1}, Lbnq;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 206
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 212
    :cond_3
    const-string v0, "ConnectionSpec()"

    goto :goto_2
.end method
