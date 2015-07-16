.class final Lcjx;
.super Lcji;
.source "SourceFile"

# interfaces
.implements Lcjo;
.implements Lcjq;
.implements Lcju;


# static fields
.field static final a:Lcjx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcjx;

    invoke-direct {v0}, Lcjx;-><init>()V

    sput-object v0, Lcjx;->a:Lcjx;

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
    const-class v0, Lcib;

    return-object v0
.end method
