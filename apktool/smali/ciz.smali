.class final Lciz;
.super Lcih;
.source "SourceFile"

# interfaces
.implements Lcin;
.implements Lcio;
.implements Lcip;
.implements Lcis;
.implements Lcit;


# static fields
.field static final a:Lciz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lciz;

    invoke-direct {v0}, Lciz;-><init>()V

    sput-object v0, Lciz;->a:Lciz;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcih;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 63
    check-cast p1, Ljava/lang/String;

    .line 64
    invoke-static {}, Lckc$a;->a()Lcjw;

    move-result-object v0

    .line 65
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcjw;->a(Lcgf;)Lcjw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcjw;->a(Ljava/lang/String;)J

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
    .line 247
    const-class v0, Ljava/lang/String;

    return-object v0
.end method
