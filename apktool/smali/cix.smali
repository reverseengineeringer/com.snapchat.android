.class final Lcix;
.super Lcih;
.source "SourceFile"

# interfaces
.implements Lcis;


# static fields
.field static final a:Lcix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcix;

    invoke-direct {v0}, Lcix;-><init>()V

    sput-object v0, Lcix;->a:Lcix;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcih;-><init>()V

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
    const-class v0, Lchb;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Lcgf;
    .locals 1

    .prologue
    .line 67
    check-cast p1, Lchb;

    invoke-interface {p1}, Lchb;->b()Lcgf;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lcgj;->a(Lcgf;)Lcgf;

    move-result-object v0

    .line 71
    return-object v0
.end method
