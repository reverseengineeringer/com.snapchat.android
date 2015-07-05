.class public final Lbu;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final b:Lbu;

.field public static final c:Lbu;

.field public static final d:Lbu;

.field public static final e:Lbu;

.field public static final f:Lbu;

.field public static final g:Lbu;


# instance fields
.field public final a:Lcom/google/android/gms/ads/AdSize;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lbu;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lbu;-><init>(II)V

    sput-object v0, Lbu;->b:Lbu;

    new-instance v0, Lbu;

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lbu;-><init>(II)V

    sput-object v0, Lbu;->c:Lbu;

    new-instance v0, Lbu;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    invoke-direct {v0, v1, v2}, Lbu;-><init>(II)V

    sput-object v0, Lbu;->d:Lbu;

    new-instance v0, Lbu;

    const/16 v1, 0x1d4

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lbu;-><init>(II)V

    sput-object v0, Lbu;->e:Lbu;

    new-instance v0, Lbu;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v2}, Lbu;-><init>(II)V

    sput-object v0, Lbu;->f:Lbu;

    new-instance v0, Lbu;

    const/16 v1, 0xa0

    const/16 v2, 0x258

    invoke-direct {v0, v1, v2}, Lbu;-><init>(II)V

    sput-object v0, Lbu;->g:Lbu;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-direct {p0, v0}, Lbu;-><init>(Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/AdSize;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbu;->a:Lcom/google/android/gms/ads/AdSize;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lbu;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lbu;

    iget-object v0, p0, Lbu;->a:Lcom/google/android/gms/ads/AdSize;

    iget-object v1, p1, Lbu;->a:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lbu;->a:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbu;->a:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
