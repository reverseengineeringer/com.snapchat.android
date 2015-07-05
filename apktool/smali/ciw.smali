.class final Lciw;
.super Lcih;
.source "SourceFile"

# interfaces
.implements Lcin;
.implements Lcip;
.implements Lcit;


# static fields
.field static final a:Lciw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lciw;

    invoke-direct {v0}, Lciw;-><init>()V

    sput-object v0, Lciw;->a:Lciw;

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
    .line 113
    const-class v0, Lcha;

    return-object v0
.end method
