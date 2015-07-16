.class final Lcjn;
.super Lcji;
.source "SourceFile"

# interfaces
.implements Lcjp;
.implements Lcjt;


# static fields
.field static final a:Lcjn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcjn;

    invoke-direct {v0}, Lcjn;-><init>()V

    sput-object v0, Lcjn;->a:Lcjn;

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
