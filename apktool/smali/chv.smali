.class public final Lchv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static a:I

.field static b:I

.field static c:I

.field static d:I

.field static e:I

.field static f:I

.field static g:I

.field static h:I

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lchv;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Lchv;


# instance fields
.field private final k:Ljava/lang/String;

.field private final l:[Lcho;

.field private final m:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lchv;->i:Ljava/util/Map;

    .line 58
    const/4 v0, 0x0

    sput v0, Lchv;->a:I

    .line 59
    const/4 v0, 0x1

    sput v0, Lchv;->b:I

    .line 60
    const/4 v0, 0x2

    sput v0, Lchv;->c:I

    .line 61
    const/4 v0, 0x3

    sput v0, Lchv;->d:I

    .line 62
    const/4 v0, 0x4

    sput v0, Lchv;->e:I

    .line 63
    const/4 v0, 0x5

    sput v0, Lchv;->f:I

    .line 64
    const/4 v0, 0x6

    sput v0, Lchv;->g:I

    .line 65
    const/4 v0, 0x7

    sput v0, Lchv;->h:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Lcho;[I)V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    iput-object p1, p0, Lchv;->k:Ljava/lang/String;

    .line 597
    iput-object p2, p0, Lchv;->l:[Lcho;

    .line 598
    iput-object p3, p0, Lchv;->m:[I

    .line 599
    return-void
.end method

.method public static a()Lchv;
    .locals 5

    .prologue
    .line 408
    sget-object v0, Lchv;->j:Lchv;

    .line 409
    if-nez v0, :cond_0

    .line 410
    new-instance v0, Lchv;

    const-string v1, "Days"

    const/4 v2, 0x1

    new-array v2, v2, [Lcho;

    const/4 v3, 0x0

    invoke-static {}, Lcho;->f()Lcho;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v1, v2, v3}, Lchv;-><init>(Ljava/lang/String;[Lcho;[I)V

    .line 415
    sput-object v0, Lchv;->j:Lchv;

    .line 417
    :cond_0
    return-object v0

    .line 410
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 835
    if-ne p0, p1, :cond_0

    .line 836
    const/4 v0, 0x1

    .line 842
    :goto_0
    return v0

    .line 838
    :cond_0
    instance-of v0, p1, Lchv;

    if-nez v0, :cond_1

    .line 839
    const/4 v0, 0x0

    goto :goto_0

    .line 841
    :cond_1
    check-cast p1, Lchv;

    .line 842
    iget-object v0, p0, Lchv;->l:[Lcho;

    iget-object v1, p1, Lchv;->l:[Lcho;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 851
    move v1, v0

    .line 852
    :goto_0
    iget-object v2, p0, Lchv;->l:[Lcho;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 853
    iget-object v2, p0, Lchv;->l:[Lcho;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 852
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 855
    :cond_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PeriodType["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lchv;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
