.class public final Lxz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lya;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lya;

    invoke-direct {v0}, Lya;-><init>()V

    invoke-direct {p0, v0}, Lxz;-><init>(Lya;)V

    .line 12
    return-void
.end method

.method private constructor <init>(Lya;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lxz;->a:Lya;

    .line 16
    return-void
.end method


# virtual methods
.method public final a(II)F
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lxz;->a:Lya;

    invoke-virtual {v0, p1, p2}, Lya;->a(II)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    return v0
.end method
