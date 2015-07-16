.class public final Lbmy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbmy$a;
    }
.end annotation


# static fields
.field public static final a:Lbmx;

.field public static final b:Lbmx;

.field public static final c:Lbmx;

.field public static final d:Lbmx;

.field public static final e:Lbmx;

.field private static final f:[B

.field private static final g:[B

.field private static final h:[B


# instance fields
.field private final i:Lcay;

.field private j:Lbmx;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbmv;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbnc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 38
    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lbmx;->a(Ljava/lang/String;)Lbmx;

    move-result-object v0

    sput-object v0, Lbmy;->a:Lbmx;

    .line 45
    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lbmx;->a(Ljava/lang/String;)Lbmx;

    move-result-object v0

    sput-object v0, Lbmy;->b:Lbmx;

    .line 53
    const-string v0, "multipart/digest"

    invoke-static {v0}, Lbmx;->a(Ljava/lang/String;)Lbmx;

    move-result-object v0

    sput-object v0, Lbmy;->c:Lbmx;

    .line 60
    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lbmx;->a(Ljava/lang/String;)Lbmx;

    move-result-object v0

    sput-object v0, Lbmy;->d:Lbmx;

    .line 68
    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lbmx;->a(Ljava/lang/String;)Lbmx;

    move-result-object v0

    sput-object v0, Lbmy;->e:Lbmx;

    .line 70
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lbmy;->f:[B

    .line 71
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lbmy;->g:[B

    .line 72
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lbmy;->h:[B

    return-void

    .line 70
    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    .line 71
    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 72
    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbmy;-><init>(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Lbmy;->a:Lbmx;

    iput-object v0, p0, Lbmy;->j:Lbmx;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbmy;->k:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbmy;->l:Ljava/util/List;

    .line 92
    invoke-static {p1}, Lcay;->a(Ljava/lang/String;)Lcay;

    move-result-object v0

    iput-object v0, p0, Lbmy;->i:Lcay;

    .line 93
    return-void
.end method

.method static synthetic b()[B
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lbmy;->h:[B

    return-object v0
.end method

.method static synthetic c()[B
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lbmy;->g:[B

    return-object v0
.end method

.method static synthetic d()[B
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lbmy;->f:[B

    return-object v0
.end method


# virtual methods
.method public final a(Lbmv;Lbnc;)Lbmy;
    .locals 2

    .prologue
    .line 118
    if-nez p2, :cond_0

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "body == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lbmv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected header: Content-Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Lbmv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected header: Content-Length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_2
    iget-object v0, p0, Lbmy;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lbmy;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-object p0
.end method

.method public final a(Lbmx;)Lbmy;
    .locals 3

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iget-object v0, p1, Lbmx;->a:Ljava/lang/String;

    const-string v1, "multipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "multipart != "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    iput-object p1, p0, Lbmy;->j:Lbmx;

    .line 108
    return-object p0
.end method

.method public final a()Lbnc;
    .locals 5

    .prologue
    .line 190
    iget-object v0, p0, Lbmy;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    new-instance v0, Lbmy$a;

    iget-object v1, p0, Lbmy;->j:Lbmx;

    iget-object v2, p0, Lbmy;->i:Lcay;

    iget-object v3, p0, Lbmy;->k:Ljava/util/List;

    iget-object v4, p0, Lbmy;->l:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lbmy$a;-><init>(Lbmx;Lcay;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
