.class final Lcgk$1;
.super Lchk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcgk;->c(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 643
    invoke-direct {p0}, Lchk;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcgk;)Lcgf;
    .locals 0

    .prologue
    .line 641
    return-object p0
.end method

.method public final a()Lcgk;
    .locals 1

    .prologue
    .line 635
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Lcgf;
    .locals 0

    .prologue
    .line 638
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
