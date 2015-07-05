.class final Lcim;
.super Lcih;
.source "SourceFile"

# interfaces
.implements Lcio;
.implements Lcis;


# static fields
.field static final a:Lcim;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcim;

    invoke-direct {v0}, Lcim;-><init>()V

    sput-object v0, Lcim;->a:Lcim;

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
.method public final a(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 55
    check-cast p1, Ljava/util/Date;

    .line 56
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

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
    .line 66
    const-class v0, Ljava/util/Date;

    return-object v0
.end method
