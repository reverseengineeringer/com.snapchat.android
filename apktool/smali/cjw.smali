.class final Lcjw;
.super Lcji;
.source "SourceFile"

# interfaces
.implements Lcjp;
.implements Lcjt;


# static fields
.field static final a:Lcjw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcjw;

    invoke-direct {v0}, Lcjw;-><init>()V

    sput-object v0, Lcjw;->a:Lcjw;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcji;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 100
    check-cast p1, Lcia;

    invoke-interface {p1}, Lcia;->c()J

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
    const-class v0, Lcia;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Lchg;
    .locals 1

    .prologue
    .line 83
    check-cast p1, Lcia;

    invoke-interface {p1}, Lcia;->d()Lchg;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lchk;->a(Lchg;)Lchg;

    move-result-object v0

    .line 87
    return-object v0
.end method
