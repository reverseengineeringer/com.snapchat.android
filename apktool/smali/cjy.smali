.class final Lcjy;
.super Lcji;
.source "SourceFile"

# interfaces
.implements Lcjt;


# static fields
.field static final a:Lcjy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcjy;

    invoke-direct {v0}, Lcjy;-><init>()V

    sput-object v0, Lcjy;->a:Lcjy;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcji;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
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
    .line 104
    const-class v0, Lcic;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Lchg;
    .locals 1

    .prologue
    .line 67
    check-cast p1, Lcic;

    invoke-interface {p1}, Lcic;->b()Lchg;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lchk;->a(Lchg;)Lchg;

    move-result-object v0

    .line 71
    return-object v0
.end method
