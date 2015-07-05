.class final Lciu;
.super Lcih;
.source "SourceFile"

# interfaces
.implements Lcin;
.implements Lcit;


# static fields
.field static final a:Lciu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lciu;

    invoke-direct {v0}, Lciu;-><init>()V

    sput-object v0, Lciu;->a:Lciu;

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
    .line 88
    const-class v0, Lcgy;

    return-object v0
.end method
