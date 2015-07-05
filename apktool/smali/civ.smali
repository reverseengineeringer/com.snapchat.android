.class final Lciv;
.super Lcih;
.source "SourceFile"

# interfaces
.implements Lcio;
.implements Lcis;


# static fields
.field static final a:Lciv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lciv;

    invoke-direct {v0}, Lciv;-><init>()V

    sput-object v0, Lciv;->a:Lciv;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcih;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 100
    check-cast p1, Lcgz;

    invoke-interface {p1}, Lcgz;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 110
    const-class v0, Lcgz;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Lcgf;
    .locals 1

    .prologue
    .line 83
    check-cast p1, Lcgz;

    invoke-interface {p1}, Lcgz;->d()Lcgf;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcgj;->a(Lcgf;)Lcgf;

    move-result-object v0

    .line 87
    return-object v0
.end method
